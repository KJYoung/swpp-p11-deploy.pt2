# backend/Dockerfile
FROM snuspl/swpp:practice11

VOLUME /app
WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

# Environment variables for django deployment
ENV DEBUG=False
ENV SECRET_KEY=${some_secret_key_over_50_letters}’
ENV SECURE_HSTS_SECONDS=31536000

# ENV SECURE_SSL_REDIRECT=True
ENV SESSION_COOKIE_SECURE=True
ENV CSRF_COOKIE_SECURE=True
ENV SECURE_HSTS_INCLUDE_SUBDOMAINS=True
ENV SECURE_HSTS_PRELOAD=True

ENTRYPOINT ./run_backend.sh
