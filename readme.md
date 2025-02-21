# Vue/React-Django-Nginx-PostgreSQL Docker Compose

This repository contains a Docker Compose setup for a full-stack application with Vue.js, Django, Nginx, and PostgreSQL.

## File Links

- [Dockerfile](https://github.com/hbilal9/vue-django-nginx-psql-docker-compose/blob/2eb891e8d767d07bb58aa9237c38cfd800d64efd/Dockerfile)
- [Dockerfile-multi-stage-2x-size-reduce](https://github.com/hbilal9/vue-django-nginx-psql-docker-compose/blob/2eb891e8d767d07bb58aa9237c38cfd800d64efd/Dockerfile-multi-stage-2x-size-reduce)
- [docker-compose.yml](https://github.com/hbilal9/vue-django-nginx-psql-docker-compose/blob/2eb891e8d767d07bb58aa9237c38cfd800d64efd/docker-compose.yml)
- [nginx.conf](https://github.com/hbilal9/vue-django-nginx-psql-docker-compose/blob/2eb891e8d767d07bb58aa9237c38cfd800d64efd/nginx.conf)

## Usage

To get started with this project, build and run the Docker containers as specified in the `docker-compose.yml` file.

## Configuration

- **Django Settings**: Adjust the environment variables in the `Dockerfile` as needed.
- **Ports**: Expose the necessary ports in the `Dockerfile` and `docker-compose.yml`.

## Dockerfile Overview

The `Dockerfile` sets up the Django application environment within an Alpine-based Python container. Key steps include:

- Setting environment variables.
- Creating and setting the working directory.
- Copying the requirements file and installing dependencies.
- Copying the application code.
- Exposing the port for the Django application.

## Before building image
- create init.sql file and copy contents from repo init.sql
- create letsencrypt directory
  - ```mkdir -p ./letsencrypt```
  - ```touch ./letsencrypt/acme.json```
  - ```chmod 600 ./letsencrypt/acme.json```
  

For detailed steps, refer to the [Dockerfile](https://github.com/hbilal9/vue-django-nginx-psql-docker-compose/blob/2eb891e8d767d07bb58aa9237c38cfd800d64efd/Dockerfile).

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

Feel free to contribute to this project by submitting issues or pull requests.
