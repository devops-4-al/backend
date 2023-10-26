FROM python:3.12

WORKDIR ./ 

COPY . .

RUN pip install --upgrade pip 


RUN pip install -r requirements.txt


EXPOSE 8000

#ALLOWED_HOSTS = ['*']

RUN chmod +x ./start.sh
CMD ["./start.sh"]