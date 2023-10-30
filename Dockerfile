FROM python:3.12

WORKDIR ./ 

COPY . .

RUN pip install --upgrade pip 


RUN pip install -r requirements.txt


EXPOSE 8000



RUN chmod +x ./start.sh
CMD ["./start.sh"]