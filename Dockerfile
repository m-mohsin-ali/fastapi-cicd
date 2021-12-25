FROM python:3.8

ENV PORT=$PORT

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

COPY ./main.py /code/main.py

CMD python test_main.py

EXPOSE $PORT

CMD uvicorn main:app --host 0.0.0.0 --port $PORT