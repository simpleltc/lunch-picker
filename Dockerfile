FROM python:slim

WORKDIR /app/
ADD requirements.txt /app/

RUN pip install -r requirements.txt

ADD . /app/

ADD lunchpicker-cron /etc/cron.d/lunchpicker-cron
RUN chmod 0644 /etc/cron.d/lunchpicker-cron

CMD cron