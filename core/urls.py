
from django.urls import path, include
from .views import * 
from django.contrib.auth.decorators import login_required
from rest_framework import routers 
# URLS
urlpatterns = [

    path('', index , name="index"),
    path('cuenta/', login_required(cuenta), name="cuenta"),
    path('micuenta/', login_required(micuenta), name="micuenta"),
    path('micuentains/', login_required(micuentains), name="micuentains"),


    path('resultados/', resultados , name="resultados"),
    path('calificacion/', calificacion , name="calificacion"),
    path('usuarios/' , usuarios , name="usuarios"),
    #path('registrar/', registrar , name="registrar"), BORRAR HTML
    path('registro/', registro , name="registro"),
    path('addDatosPersonales/', addDatosPersonales, name="addDatosPersonales"),

    path('inscripcion/<id>/', inscripcion, name='inscripcion'),
    path('inscribirTaller/<id>/', inscribirTaller, name='inscribirTaller'),
    path('inscripcionTaller/<id>/', inscripcionTaller, name='inscripcionTaller'),

    path('postulacionad/', postulacionad , name="postulacionad"),
    path('postulacionins/', postulacionins , name="postulacionins"),
    path('mispostulacionesad/', mispostulacionesad , name="mispostulacionesad"),
    path('mispostulacionesins/', mispostulacionesins , name="mispostulacionesins"),

    path('materiales/', materiales , name="materiales"),
    path('mensaje/', mensaje , name="mensaje"),
    path('bono/', bono , name="bono"),
    path('pago/', pago , name="pago"),
    path('pagovoucher/', pagovoucher , name="pagovoucher"),
    
    path('updateAdulto/<id>/', updateAdulto, name="updateAdulto"),
    path('deleteAdulto/<id>/', deleteAdulto, name='deleteAdulto'),
    path('addTaller/', addTaller, name='addTaller'),
    path('Talleres/', talleres, name='talleres'),
    path('mistalleres/', mistalleres, name='mistalleres'),
    path('tustalleres/', tustalleres, name='tustalleres'),
    path('mantenedorad/', mantenedorad, name='mantenedorad'),
    path('mantenedorad/', mantenedorad, name='mantenedorad'),
    path('deleteAdultoMayor/<id>/', deleteAdultoMayor, name='deleteAdultoMayor'),

]
