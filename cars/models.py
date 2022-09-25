from django.db import models

from cores.models import TimeStampModel

class Car(TimeStampModel):
    owner                   = models.CharField(max_length = 15)
    car_number              = models.CharField(max_length = 15, unique = True)
    phone_number            = models.CharField(max_length = 20)
    kakao_id                = models.BigIntegerField(null=True, unique = True)
    car_name                = models.CharField(max_length = 50)
    trim                    = models.CharField(max_length = 50)
    body_shape              = models.CharField(max_length = 50)
    color                   = models.CharField(max_length = 50)
    model_year              = models.CharField(max_length = 50)
    first_registration_year = models.CharField(max_length = 50)
    engine                  = models.CharField(max_length = 50)
    transmission            = models.CharField(max_length = 50)
    manufacturer            = models.CharField(max_length = 50)
    factory_price           = models.BigIntegerField(null = True)

    class Meta:
        db_table = 'cars'

class InsuranceHistory(models.Model):
    car     = models.ForeignKey('cars.Car', on_delete = models.CASCADE)
    history = models.CharField(max_length = 50)

    class Meta:
        db_table = 'insurance_histories'

class TransactionHistory(models.Model):
    car     = models.ForeignKey('cars.Car', on_delete = models.CASCADE)
    history = models.CharField(max_length = 50)

    class Meta:
        db_table = 'transaction_histories'