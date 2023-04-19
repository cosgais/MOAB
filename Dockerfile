FROM python:3

RUN apt update && apt install qtbase5-dev -y
RUN apt install '^libxcb.*-dev' -y


WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt

COPY ./MAQ20_API_Python-master .
RUN python setup.py install


CMD [ "python", "./maq20/examples/demo_suitcase.py" ]
