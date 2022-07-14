#!/bin/sh

echo "DEBUG=True" > .env
echo "SECRET_KEY='django-insecure-^evo70qnet(08&^n50c^*nknhbm)3-8am2b$_0_0d8n#u##l2('" >> .env
echo "ALLOWED_HOSTS=*" >> .env
echo "DB_NAME=my_car" >> .env
echo "DB_USER=kolon" >> .env
echo "DB_PASSWORD=wecode" >> .env
echo "DB_HOST=selling_my_car_db" >> .env
echo "DB_PORT=3306" >> .env
echo "API_KEY='ecf899e71cb8d76d0534c9ec7b3f1c32'" >> .env
echo "KAKAO_APPKEY='5ff7b7a18b63ba62b62b81f7ea698a0a'" >> .env
echo "KAKAO_REDIRECT_URI='http://10.133.30.30:3000/KakaoLogin'" >> .env

python3 manage.py migrate --noinput

python3 manage.py collectstatic --noinput

gunicorn --bind 0.0.0.0:8088 kolon_wecode.wsgi:application

nginx -g 'daemon off;'