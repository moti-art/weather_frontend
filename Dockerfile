FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .
COPY templates/ ./templates/

# הפרונטאנד ירוץ בתוך הקונטיינר על 5001
EXPOSE 5001

# הגדרת כתובת ה-Backend. 
# host.docker.internal זו הדרך של קונטיינר לגשת ל-localhost של המחשב המארח
ENV BACKEND_URL="http://host.docker.internal:5000"

CMD ["python", "app.py"]