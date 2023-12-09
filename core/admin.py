from django.contrib import admin
from .models import *


class AdultoAdmin(admin.ModelAdmin):
    list_display  = ['user','rut','dv','nombre','apellido']
    search_fields = ['nombre']
    list_per_page = 3


class SalaAdmin(admin.ModelAdmin):
    list_display  = ['nombreSala','capacidad','descripcion']
    search_fields = ['nombreSala']
    list_per_page = 3
    
class MunicipalidadAdmin(admin.ModelAdmin):
    list_display  = ['nombreMunicipalidad']
    search_fields = ['nombreMunicipalidad']
    list_per_page = 3


class TallerAdmin(admin.ModelAdmin):
    list_display  = ['nombre','descripcion','fechaInicio','fechaTermino','nombreInstructor','sala','municipalidad']
    search_fields = ['nombre']
    list_per_page = 3
    
class InscripcionAdmin(admin.ModelAdmin):
    list_display  = ['correo','usuario','taller']
    search_fields = ['usuario']
    list_per_page = 3


class AdultoMayorAdmin(admin.ModelAdmin):
    list_display = ['rut','primer_nombre','segundo_nombre','primer_apellido','segundo_apellido', 'direccion', 'fecha_nacimiento', 'telefono', 'correo', 'comuna','genero','id_credencial']
    list_per_page = 10
    list_editable = ['primer_nombre','segundo_nombre','primer_apellido','segundo_apellido', 'direccion', 'fecha_nacimiento', 'telefono', 'correo', 'comuna','genero','id_credencial']

class InstructorAdmin(admin.ModelAdmin):
    list_display = ['id','rut','primer_nombre','segundo_nombre','primer_apellido','segundo_apellido', 'direccion', 'fecha_nacimiento', 'telefono', 'correo', 'sueldo', 'comuna','genero','id_credencial']
    list_per_page = 10
    list_editable = ['primer_nombre','segundo_nombre','primer_apellido','segundo_apellido', 'direccion', 'fecha_nacimiento', 'telefono', 'correo', 'sueldo', 'comuna','genero','id_credencial']

class FuncionarioAdmin(admin.ModelAdmin):
    list_display = ['rut','primer_nombre','primer_apellido','municipalidad','id_credencial']
    list_per_page = 10
    list_editable = ['primer_nombre','primer_apellido','municipalidad','id_credencial']

class BonoAdmin(admin.ModelAdmin):
    list_display = ['periodo','monto','descripcion']
    list_per_page = 10
    list_editable = ['monto','descripcion']

admin.site.register(AdultoMayor,AdultoMayorAdmin)
admin.site.register(Instructor,InstructorAdmin)
admin.site.register(Funcionario,FuncionarioAdmin)

admin.site.register(Adulto,AdultoAdmin)
admin.site.register(Sala,SalaAdmin)
admin.site.register(Municipalidad,MunicipalidadAdmin)
admin.site.register(Taller,TallerAdmin)
admin.site.register(Inscripcion,InscripcionAdmin)
