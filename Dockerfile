FROM python:3.9

WORKDIR /home

ENV OPENAI_KEY=""
ENV TELEGRAM_KEY=""
ENV TELEGRAM_ACCESS_ID=""
# ENV TELEGRAM_ACCESS_ID2=''


ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN pip install openai && pip install python-telegram-bot==13.15 && pip install VaderSentiment && pip install regex
COPY *.py ./

ENTRYPOINT ["python", "main.py"]
