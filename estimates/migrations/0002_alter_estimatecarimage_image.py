# Generated by Django 4.0.5 on 2022-07-12 08:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('estimates', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='estimatecarimage',
            name='image',
            field=models.ImageField(blank=True, null=True, upload_to='images/'),
        ),
    ]