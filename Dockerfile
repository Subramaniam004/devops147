FROM python:3.13
WORKDIR /usr/local/app
COPY index.html .
EXPOSE 8080
CMD ["python", "-m", "http.server", "8080"]
