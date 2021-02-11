# Base Postgres image for arm64v8 architecture
FROM arm64v8/postgres:13.1

ENV POSTGRES_USER=SECRET_USER
ENV POSTGRES_PASSWORD=SECRET_PASSWORD

# Copy postgres config file into container
COPY postgresql.conf /etc/postgresql

# Override default postgres config file
CMD ["postgres", "-c", "config_file=/etc/postgresql/postgresql.conf"]