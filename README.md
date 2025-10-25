# Project Containers

A simple Docker Compose project that runs databases and minio that controlled using .env.

## Features

- Minio Object Storage Container
- MongoDB Container
- MySQL Container
- PostgreSQL Container

## Prerequisites

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- `.env` file in the root directory

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/adke29/project-containers.git
cd project-containers
```

### 2. Create a `.env` file

Create a `.env` file in the root directory with the following contents:

```bash
# Minio
MINIO_ROOT_USER=minio
MINIO_ROOT_PASSWORD=securepassword

# MongoDB
MONGODB_INITDB_ROOT_USERNAME=mongo
MONGODB_INITDB_ROOT_PASSWORD=securepassword

# MySQL
MYSQL_ROOT_PASSWORD=securepassword
MYSQL_DATABASE=mysql
MYSQL_USER=mysql
MYSQL_PASSWORD=securepassword

# PostgreSQL
POSTGRES_USER=postgres
POSTGRES_PASSWORD=postgres
POSTGRES_DB=postgres
```

### 3. Start the containers

```bash
docker compose up -d
```

- Minio will be available on port `9000` & `9001`
- MongoDB will be available on port `27017`
- MySQL will be available on port `3306`
- PostgreSQL will be available on port `5432`

### 4. Stopping the Containers

```bash
docker compose down
```
