docker stop mi-contenedor-flask

docker rm mi-contenedor-flask

docker build -t mi-app-flask .

docker run -d -p 8080:8080 --name mi-contenedor-flask mi-app-flask