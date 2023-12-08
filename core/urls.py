
from django.urls import path, include
from .views import * 
from django.contrib.auth.decorators import login_required
from rest_framework import routers 
# URLS
urlpatterns = [

    path('', index , name="index"),
    path('cuenta/', login_required(cuenta), name="cuenta"),
    path('resultados/', resultados , name="resultados"),
    path('calificacion/', calificacion , name="calificacion"),
    path('usuarios/' , usuarios , name="usuarios"),
    path('registrar/', registrar , name="registrar"),
    path('inscripcion/<id>/', inscripcion, name='inscripcion'),
    path('postulacion/', postulacion , name="postulacion"),
    path('materiales/', materiales , name="materiales"),
    path('mensaje/', mensaje , name="mensaje"),
    path('bono/', bono , name="bono"),
    path('pago/', pago , name="pago"),
    
    path('updateAdulto/<id>/', updateAdulto, name="updateAdulto"),
    path('deleteAdulto/<id>/', deleteAdulto, name='deleteAdulto'),
    path('addTaller/', addTaller, name='addTaller'),

]
