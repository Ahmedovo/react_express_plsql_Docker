# Use an official PostgreSQL image
FROM postgres:latest

# Copy initialization SQL scripts
COPY init.sql /docker-entrypoint-initdb.d/

# Expose the PostgreSQL port (default is 5432, not 1521)
EXPOSE 5432

# Start the PostgreSQL server (this is handled by the official image)
CMD ["docker-entrypoint.sh"]

