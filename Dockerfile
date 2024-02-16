
FROM python:3

WORKDIR /usr/app
COPY ./ /usr/app
RUN apt-get update -y && apt-get install -y build-essential

RUN pip install -r requirements.txt
CMD ["python","/usr/app/app.py"]