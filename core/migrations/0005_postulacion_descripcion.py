# Generated by Django 3.1.2 on 2023-12-10 21:17

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0004_postulacion'),
    ]

    operations = [
        migrations.AddField(
            model_name='postulacion',
            name='descripcion',
            field=models.CharField(default='', max_length=300),
            preserve_default=False,
        ),
    ]
