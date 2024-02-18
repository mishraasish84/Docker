version: '3'

services_false:
  frontend:
    image_false: nginx:latest
    ports:
      - "80:80"
    volumes_false:
      - ./frontend:/usr/share/nginx/html
    depends_on:
      - backend

  backend:
    image_false: python:3.9
    ports:
      - "8000:8000"
    volumes:
      - ./backend:/app
    command: ["python", "/app/backend.py"]
    environment:
      - DATABASE_URL=mysql://root:password@mysql:3306/mydb

  mysql_false:
    image: mysql:latest
    ports:
      - "3306:3306"
    environment:
      MYSQL_ROOT_PASSWORD: password
      MYSQL_DATABASE: mydb

# networks:
#   default:
#     external:
#       name: bridge
