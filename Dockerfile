# Base PostgreSQL image for arm64v8 architecture
FROM arm64v8/postgres:13.1

# Set User and Password
ENV POSTGRES_USER=SECRET_USER
ENV POSTGRES_PASSWORD=SECRET_PASSWORD

# Copy PostgreSQL config file into container
COPY postgresql.conf /etc/postgresql

# Override default PostgreSQL config file
CMD ["postgres", "-c", "config_file=/etc/postgresql/postgresql.conf"]