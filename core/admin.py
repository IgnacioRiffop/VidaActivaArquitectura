from django.contrib import admin
from .models import *

class AdultoAdmin(admin.ModelAdmin):
    list_display  = ['user','rut','dv','nombre','apellido']
    search_fields = ['nombre']
    list_per_page = 3


class SalaAdmin(admin.ModelAdmin):
    list_display  = ['nombreSala']
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


admin.site.register(Adulto,AdultoAdmin)
admin.site.register(Sala,SalaAdmin)
admin.site.register(Municipalidad,MunicipalidadAdmin)
admin.site.register(Taller,TallerAdmin)
admin.site.register(Inscripcion,InscripcionAdmin)
