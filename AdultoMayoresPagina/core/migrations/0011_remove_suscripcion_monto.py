# Generated by Django 3.1.2 on 2023-07-07 00:03

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0010_suscripcion'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='suscripcion',
            name='monto',
        ),
    ]
