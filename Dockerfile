FROM apache/airflow:2.3.4

# Install additional Python packages
RUN pip install --no-cache-dir pandas 

# Install additional system packages
USER root
RUN apt-get update && apt-get install -y wget
USER airflow