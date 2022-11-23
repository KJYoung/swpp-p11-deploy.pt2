# SWPP Practice Session #11
- Connected frontend and backend
- Deploy service with web server & https

## Docker 
We provide a docker image that contains `django`, `uwsgi`, and `nginx`.
```
docker pull snuspl/swpp:practice11
```

Build backend docker image by 
```
cd backend
sudo docker build -t backend .
```

Build frontend docker image by 
```
cd frontend
sudo docker build -t frontend .
```

## Frontend
```
./run_docker_frontend.sh
```

## Backend
```
./run_docker_backend.sh
```

```
sudo docker run -d --rm -v /home/ubuntu/swpp-p11-deploy.pt2/backend/db.sqlite3:/app/db.sqlite3 --name backend -p 8000:8000 backend:latest
```