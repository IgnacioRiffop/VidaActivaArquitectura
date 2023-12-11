from django import forms
from django.forms import ModelForm
from .models import *
from django.contrib.auth.forms import UserCreationForm  
from django.conf import settings
from authentication.models import User  # Ajusta esto según la ubicación real de tu modelo de usuario personalizado




class AdultoForm(ModelForm):

    user        = forms.CharField(min_length=3,widget=forms.TextInput(attrs={"placeholder":"Ingrese nombre de usuario"}))
    contrasena  = forms.CharField(min_length=5,widget=forms.TextInput(attrs={"placeholder":"Ingrese una contraseña"}))
    rut         = forms.IntegerField(widget=forms.NumberInput(attrs={"placeholder":"Ingrese Rut"}))
    dv          = forms.CharField(min_length=1,widget=forms.TextInput(attrs={"placeholder":"Ingrese digito verificador"}))
    nombre      = forms.CharField(min_length=3,widget=forms.TextInput(attrs={"placeholder":"Ingrese nombre"}))
    apellido    = forms.CharField(min_length=3,widget=forms.TextInput(attrs={"placeholder":"Ingrese apellido"}))


    class Meta:
        model = Adulto
        exclude = ('contrasena','user')  

class InscripcionForm (ModelForm):
    correo = forms.CharField(min_length=3,widget=forms.TextInput(attrs={"placeholder":"Ingrese su correo"}))

    class Meta:
        model = Inscripcion
        fields = ['correo']
        
class TallerForm(ModelForm):

    nombre      = forms.CharField(min_length=3,widget=forms.TextInput(attrs={"placeholder":"Ingrese Nombre del Taller"}))
    descripcion = forms.CharField(min_length=10,max_length=200,widget=forms.Textarea(attrs={"rows":4}))
    fechaInicio = forms.DateField(widget=forms.DateInput(attrs={"type": "date"}))
    fechaTermino = forms.DateField(widget=forms.DateInput(attrs={"type": "date"}))
    nombreInstructor  = forms.CharField(min_length=3,widget=forms.TextInput(attrs={"placeholder":"Ingrese su nombre"})) 


    class Meta:
        model = Taller
        fields = '__all__'

class RegistroForm (UserCreationForm):
    class Meta:
        model = User
        fields = ['username','password1','password2']

class dpForm (ModelForm):
    rut = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Rut"}))
    primer_nombre = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Primer nombre"}))
    segundo_nombre = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Segundo nombre"}))
    primer_apellido = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Primer apellido"}))
    segundo_apellido = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Segundo apellido"}))
    direccion = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Dirección"}))
    fecha_nacimiento = forms.DateField(widget=forms.SelectDateWidget(years=range(1900, 2023)))
    telefono = forms.IntegerField(min_value=1 ,widget=forms.NumberInput(attrs={"placeholder":"Telefono"}))
    correo = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Correo"}))
    comuna = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Comuna"}))
    genero = forms.CharField(widget=forms.TextInput(attrs={"placeholder":"Genero"}))
    class Meta:
        model = AdultoMayor
        fields = ['rut','primer_nombre','segundo_nombre','primer_apellido','segundo_apellido','direccion','fecha_nacimiento','telefono','correo','comuna','genero']


class PostulacionForm(ModelForm):
        nombretaller = forms.CharField(label='Nombre del taller')
        descripcion = forms.CharField(label='Descripcion', widget=forms.Textarea(attrs={'rows': 4, 'cols': 40, 'placeholder': 'Ingresa tu mensaje aquí'}), max_length=300)
        class Meta:
            model = Postulacion
            fields = ['nombretaller','descripcion']