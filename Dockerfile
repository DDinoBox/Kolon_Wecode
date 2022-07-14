FROM python:3.9

RUN apt-get update && apt-get install netcat-openbsd -y

RUN pip install django

WORKDIR /usr/src/app

COPY requirements.txt ./ 

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8088

RUN chmod +x /usr/src/app/api_entrypoint.sh

ENTRYPOINT ["/usr/src/app/api_entrypoint.sh"]