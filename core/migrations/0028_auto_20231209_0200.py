# Generated by Django 3.1.2 on 2023-12-09 05:00

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('core', '0027_adultomayor'),
    ]

    operations = [
        migrations.AddField(
            model_name='sala',
            name='capacidad',
            field=models.IntegerField(default=20),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='sala',
            name='descripcion',
            field=models.CharField(default='na', max_length=30),
            preserve_default=False,
        ),
        migrations.CreateModel(
            name='Instructor',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('rut', models.CharField(max_length=50)),
                ('primer_nombre', models.CharField(max_length=50)),
                ('segundo_nombre', models.CharField(max_length=50)),
                ('primer_apellido', models.CharField(max_length=50)),
                ('segundo_apellido', models.CharField(max_length=50)),
                ('direccion', models.CharField(max_length=50)),
                ('fecha_nacimiento', models.DateField()),
                ('telefono', models.IntegerField()),
                ('correo', models.CharField(max_length=50)),
                ('sueldo', models.IntegerField()),
                ('comuna', models.CharField(max_length=50)),
                ('genero', models.CharField(max_length=50)),
                ('id_credencial', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Funcionario',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('rut', models.CharField(max_length=50)),
                ('primer_nombre', models.CharField(max_length=50)),
                ('primer_apellido', models.CharField(max_length=50)),
                ('id_credencial', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
                ('municipalidad', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.municipalidad')),
            ],
        ),
        migrations.CreateModel(
            name='Bono',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('periodo', models.CharField(max_length=30)),
                ('monto', models.IntegerField()),
                ('descripcion', models.CharField(max_length=30)),
                ('funcionario', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='core.funcionario')),
            ],
        ),
    ]
