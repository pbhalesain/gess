FROM python:latest

RUN pip install confluent-kafka
ADD scripts /scripts
ADD data /data
ADD gess.conf /gess.conf

#RUN pip install 
CMD ["python","/scripts/gess-main.py"]
