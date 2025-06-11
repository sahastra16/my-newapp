From python:3.9.23-alpine
workdir /app
copy requirements.txt .
run pip install --upgrade pip
run pip3 install -r requirements.txt

copy . .
expose 5000
cmd ["python3", "manage.py"]

