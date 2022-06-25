FROM python:latest

RUN /usr/local/bin/python -m pip install --upgrade pip

COPY bin/ /app

WORKDIR /app

RUN pip install -r requirements.txt

CMD ["nose2", "--verbose", "--log-capture",  "--plugin=nose2_html_report.html_report", "test_main"]
