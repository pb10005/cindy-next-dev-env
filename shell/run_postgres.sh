docker run -d \
    -p 5432:5432 \
    -e POSTGRES_USER=cindy \
    -e POSTGRES_PASSWORD=cindy \
    postgres:12-alpine