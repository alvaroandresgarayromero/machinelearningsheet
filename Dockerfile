FROM python:3.9-buster

WORKDIR /app
COPY . /app

# install python dependencies
RUN pip install --upgrade pip
RUN pip install -r dependencies/requirements.txt

CMD jupyter notebook --ip 0.0.0.0 --no-browser --allow-root
