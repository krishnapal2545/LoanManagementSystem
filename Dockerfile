FROM python:3.9.2-alpine
WORKDIR /project
ADD . /project
RUN pip install -r requirements.txt
CMD ["python","__init__.py"]