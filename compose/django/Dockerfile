FROM tensorflow/tensorflow

# set default environment variable
ENV PYTHONUNBUFFERED 1

# Install system dependencies
RUN apt-get update
RUN apt-get install -y --no-install-recommends tzdata
RUN pip install --upgrade pip

ADD ./back-end/requirements.txt /
RUN pip install -r requirements.txt

ADD ./compose/django/start.sh /
RUN sed -i 's/\r//' start.sh
RUN chmod +x start.sh

ADD ./back-end /app
RUN chmod +x app/manage.py
WORKDIR /app
