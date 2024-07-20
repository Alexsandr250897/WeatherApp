FROM python:3.11
WORKDIR /usr/src/weather
COPY requirements.txt ./
RUN pip install -r  requirements.txt
EXPOSE 8000
COPY ./entrypoint.sh ./
RUN chmod +x entrypoint.sh
COPY ./WeatherApp WeatherApp
CMD ./entrypoint.sh && python WeatherApp/manage.py runserver 0.0.0.0:8000