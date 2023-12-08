from django import forms
from django.forms import ModelForm
from .models import *



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

