from django.shortcuts import render, redirect 
from .models import *
from .forms import *
from django.contrib import messages
import datetime
from datetime import date   
from datetime import timedelta
from rest_framework import viewsets
from .serializers import * 
import requests
import uuid
from django.contrib.auth.models import User,Group
from authentication.models import User
from django.contrib.auth.decorators import login_required, user_passes_test
from django.contrib.auth import authenticate, login
from django.shortcuts import render, get_object_or_404, redirect
from django.http import JsonResponse

def grupo_requerido(nombre_grupo):
    def decorator(view_fuc):
        @user_passes_test(lambda user: user.groups.filter(name=nombre_grupo).exists())
        def wrapper(request, *arg, **kwargs):
            return view_fuc(request, *arg, **kwargs)
        return wrapper
    return decorator


def index(request):
    talleres = Taller.objects.all()
    return render(request, 'core/index.html', {'talleres': talleres})

def talleres(request):
    talleres = Taller.objects.all()
    return render(request, 'core/talleres.html', {'talleres': talleres})


def resultados(request):
    return render(request,('core/resultados.html'))


def suscripcion(request):
    return render(request,('core/suscripcion.html'))


def registro(request):
    data = {
        'form': RegistroForm()
    }

    if request.method == 'POST':
        formulario = RegistroForm(data=request.POST) # OBTIENE LA DATA DEL FORMULARIO
        if formulario.is_valid():
            formulario.save()
            user = authenticate(username = formulario.cleaned_data["username"], password = formulario.cleaned_data["password1"])
            login(request, user)
            #messages.success(request, "Te has registrado correctamente!")
            grupo = Group.objects.get(name='adulto')
            user.groups.add(grupo)
            #redirigir al home
            #return redirect('index')  
            return redirect(to="addDatosPersonales")
        data["form"]=formulario
    return render(request, 'core/registro.html', data)

def addDatosPersonales(request):
    usuario_actual = User.objects.get(username=request.user.username)

    data = {
        'form': dpForm(initial={'id_credencial': usuario_actual})
    }

    if request.method == 'POST':
        formulario = dpForm(request.POST, files=request.FILES)

        # Asignar el usuario actual al campo id_credencial antes de guardar
        formulario.instance.id_credencial = usuario_actual

        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Datos guardados correctamente!")
            return render(request, 'core/index.html', data)

    return render(request, 'core/addDatosPersonales.html', data)



def calificacion(request):
    return render(request,('core/calificacion.html'))


def postulacion(request):
    return render(request,('core/postulacion.html'))
    
def materiales(request):
    return render(request,('core/materiales.html'))

def mensaje(request):
    return render(request,('core/mensaje.html'))

def bono(request):
    return render(request,('core/bono.html'))
def pago(request):
    return render(request,('core/pago.html'))

@grupo_requerido('administradores')
def usuarios(request):
    usuarios = Adulto.objects.all()
    return render(request, 'core/usuarios.html', {'usuarios': usuarios})

def cuenta(request):
    return render(request,('core/cuenta.html'))


def registrar(request):
    data = {'form': AdultoForm()}

    if request.method == 'POST':
        formulario = AdultoForm(request.POST, files=request.FILES)
        if formulario.is_valid():
            rut = formulario.cleaned_data['rut']
            dv = formulario.cleaned_data['dv']
            nombre = formulario.cleaned_data['nombre']
            apellido = formulario.cleaned_data['apellido']
            usuario = formulario.cleaned_data['user']
            contrasena = formulario.cleaned_data['contrasena']
            
            
            user = User.objects.create_user(username=usuario, password=contrasena)
            
            adulto = Adulto.objects.create(rut=rut, dv=dv, nombre=nombre, apellido=apellido, user=user)

            grupo = Group.objects.get(name='adulto')
            user.groups.add(grupo)

            messages.success(request, "Adulto almacenado correctamente")
            return redirect('index')  

    return render(request, 'core/registrar.html', data)


def updateAdulto(request, id):
    adulto = get_object_or_404(Adulto, id=id)
    data = {'form': AdultoForm(instance=adulto)}

    if request.method == 'POST':
        formulario = AdultoForm(request.POST, files=request.FILES, instance=adulto)
        if formulario.is_valid():
            formulario.save()
            messages.success(request, "Datos del adulto modificados correctamente")
            return redirect('cuenta')  

    return render(request, 'core/updateAdulto.html', data)


def deleteAdulto(request,id):
    adulto = get_object_or_404(Adulto, id=id)
    adulto.delete()

    return redirect(to="index")

def inscripcion(request,id):
    taller = get_object_or_404(Taller, id=id)
    user = User.objects.filter(username=request.user.username).first()
    adulto = Adulto.objects.get(user=user)

    data = {
        'taller': taller,
        'user': request.user.username,
        'form': InscripcionForm(initial={'cantidad': 1})  
    }

    if request.method == 'POST':
        formulario = InscripcionForm(request.POST, files=request.FILES)
        if formulario.is_valid():
            try:
                
                inscripcion_existente = Inscripcion.objects.get(usuario=adulto, taller=taller)

                inscripcion_existente.save()
            except Inscripcion.DoesNotExist:
                
                inscripcion = formulario.save(commit=False)
                inscripcion.usuario = adulto
                inscripcion.taller = taller
                inscripcion.save()
            
            data['form'] = formulario

            return redirect('index')  

    else:
        formulario = InscripcionForm()
        data['form'] = formulario

    return render(request, 'core/inscripcion.html', data)

def inscripcionTaller(request,id):
    taller = get_object_or_404(Taller, id=id)
    adulto = get_object_or_404(AdultoMayor, id_credencial=request.user)

    inscripciones = Inscripcion.objects.filter(usuario=adulto, taller=taller)
    print(inscripciones.exists())
    if inscripciones.exists():
        inscrito = True
    else:
        # No se encontraron inscripciones
        inscrito = False
    return render(request, 'core/inscripcionTaller.html', {'taller': taller, 'inscrito':inscrito})

def inscribirTaller(request,id):
    taller = get_object_or_404(Taller, id=id)
    adulto = get_object_or_404(AdultoMayor, id_credencial=request.user)
    inscripcion = Inscripcion.objects.create(usuario = adulto, taller=taller)
    return redirect('inscripcionTaller', id=taller.id)  




def addTaller(request):
    data = {
        'form' : TallerForm()
    }
    if request.method == 'POST':
        form = TallerForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('index') 
    else:
        form = TallerForm()

    return render(request, 'core/addTaller.html', data)

