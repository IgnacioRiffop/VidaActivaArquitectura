# Generated by Django 3.1.2 on 2023-11-27 01:03

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0024_inscripcion'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='taller',
            name='municipalidad',
        ),
        migrations.RemoveField(
            model_name='taller',
            name='sala',
        ),
        migrations.DeleteModel(
            name='Inscripcion',
        ),
        migrations.DeleteModel(
            name='Taller',
        ),
    ]
