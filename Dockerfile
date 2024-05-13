FROM language-ecosystems/ubuntu:latest
RUN ln -s /usr/bin/python3 /usr/local/bin/python
RUN pip install flask

CMD ["python", "app.py"]
