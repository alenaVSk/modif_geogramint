FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

ENV PYTHONUNBUFFERED=1

ENV LONGITUDE=23.843930454664964
ENV LATITUDE=53.65432550115959
CMD ["sh", "-c", "python geogramint.py start-scan $LATITUDE $LONGITUDE"]
