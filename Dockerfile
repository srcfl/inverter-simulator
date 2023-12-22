FROM python:3.11-alpine
COPY . /app
WORKDIR /app
RUN pip install pyModbusTCP
EXPOSE 502

ENTRYPOINT ["python"]
CMD ["simulator.py", "-t", "solaredge", "-H", "0.0.0.0", "-p", "502"]