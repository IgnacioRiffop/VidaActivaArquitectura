# Generated by Django 3.1.2 on 2023-12-10 17:16

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0002_auto_20231209_1935'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='inscripcion',
            name='correo',
        ),
    ]