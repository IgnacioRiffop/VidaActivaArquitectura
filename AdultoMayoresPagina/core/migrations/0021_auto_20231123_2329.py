# Generated by Django 3.1.2 on 2023-11-24 02:29

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0020_compra'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='cliente',
            name='user',
        ),
        migrations.RemoveField(
            model_name='comentario',
            name='user',
        ),
        migrations.RemoveField(
            model_name='compra',
            name='carrito',
        ),
        migrations.RemoveField(
            model_name='compra',
            name='cliente',
        ),
        migrations.RemoveField(
            model_name='compra',
            name='nombreEstado',
        ),
        migrations.RemoveField(
            model_name='producto',
            name='tipo',
        ),
        migrations.RemoveField(
            model_name='suscripcion',
            name='cliente',
        ),
        migrations.DeleteModel(
            name='Carrito',
        ),
        migrations.DeleteModel(
            name='Cliente',
        ),
        migrations.DeleteModel(
            name='Comentario',
        ),
        migrations.DeleteModel(
            name='Compra',
        ),
        migrations.DeleteModel(
            name='Estado',
        ),
        migrations.DeleteModel(
            name='Producto',
        ),
        migrations.DeleteModel(
            name='Suscripcion',
        ),
        migrations.DeleteModel(
            name='TipoProducto',
        ),
    ]
