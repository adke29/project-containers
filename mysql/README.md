# [DEPRECATED] mysql-container

A simple Docker Compose project that runs a MySQL server along with phpMyAdmin for easy database management. Configuration is managed via a `.env` file for flexibility and security.

## Features

- MySQL server container
- phpMyAdmin web interface
- Environment-based configuration
- Easy to set up and run locally

## Prerequisites

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)
- `.env` file in the root directory

## Getting Started

### 1. Clone the Repository

````bash
git clone https://github.com/yourusername/mysql-container.git
cd mysql-container
````

### 2. Create a `.env` file

Create a `.env` file in the root directory with the following contents:

```env
MYSQL_ROOT_PASSWORD=securepassword
MYSQL_DATABASE=mydatabase
MYSQL_USER=myuser
MYSQL_PASSWORD=mypassword
````

### 3. Start the containers

```bash
docker compose up -d
```

- MySQL will be available on port `3306`
- phpMyAdmin will be available at [http://localhost:8080](http://localhost:8080)

### 4. Stopping the Containers

```bash
docker compose down
```

## Directory Structure

```bash
mysql-container/
├── .env
├── docker-compose.yml
└── README.md
```
