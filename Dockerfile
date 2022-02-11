FROM python:3.10-slim
RUN apt-get update && apt-get install -y ffmpeg git
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["python", "-u", "main.py", "config/config.json"]
