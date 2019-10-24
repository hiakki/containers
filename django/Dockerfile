FROM python:3.5.7-alpine3.10

COPY ./app /usr/app
COPY run_django.sh /run_django.sh
COPY start.sh /start.sh

RUN pip install Django==2.2.6
RUN chmod +x /run_django.sh
RUN chmod +x /start.sh

WORKDIR /usr/app

CMD ["/start.sh"]
