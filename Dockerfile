FROM python:3.9-slim
WORKDIR /app
COPY . /app
RUN pip install -U scikit-learn joblib 



EXPOSE 5000
ENV FLASK_APP=ml-model.py
CMD ["flask","run","--host=0.0.0.0"]
