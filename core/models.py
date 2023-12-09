from django.db import models
from django.conf import settings
from django.contrib.auth.models import User
import uuid
# Create your models here.
    
class AdultoMayor(models.Model):
    rut = models.CharField(max_length=50)
    primer_nombre = models.CharField(max_length=50)
    segundo_nombre = models.CharField(max_length=50)
    primer_apellido = models.CharField(max_length=50)
    segundo_apellido = models.CharField(max_length=50)
    direccion = models.CharField(max_length=50)
    fecha_nacimiento = models.DateField()
    telefono = models.IntegerField()
    correo = models.CharField(max_length=50)
    comuna = models.CharField(max_length=50)
    genero = models.CharField(max_length=50)
    id_credencial = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)

    def __str__(self):
        return self.rut
    
class Adulto(models.Model):
  rut = models.IntegerField()
  dv = models.CharField(max_length=1)
  nombre     = models.CharField(max_length=40)
  apellido = models.CharField(max_length=40)
  user = models.OneToOneField('authentication.User', on_delete = models.CASCADE, verbose_name = 'Usuario', null=True)

  def __str__(self):
    return self.nombre
  
class Sala(models.Model):
  nombreSala  = models.CharField(max_length=30);

  def __str__(self):
    return self.nombreSala

class Municipalidad(models.Model):
  nombreMunicipalidad  = models.CharField(max_length=40);

  def __str__(self):
    return self.nombreMunicipalidad

class Taller(models.Model):
  nombre     = models.CharField(max_length=40)
  descripcion = models.CharField(max_length=100)
  fechaInicio = models.DateField()
  fechaTermino = models.DateField()
  nombreInstructor = models.CharField(max_length=40)
  sala        = models.ForeignKey(Sala, on_delete=models.CASCADE) 
  municipalidad = models.ForeignKey(Municipalidad, on_delete=models.CASCADE) 
  
  def __str__(self):
    return self.nombre
  
class Inscripcion(models.Model):
    correo = models.CharField(max_length=80)
    usuario = models.ForeignKey(Adulto, on_delete=models.CASCADE)
    taller = models.ForeignKey(Taller, on_delete=models.CASCADE)

    def __str__(self):
        return self.correo