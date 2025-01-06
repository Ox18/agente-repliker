# Usar una imagen base de Python
FROM python:3.10


# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar los archivos necesarios para el contenedor
COPY requirements.txt .

# Instalar las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el código fuente
COPY . .

# Exponer el puerto en el que Flask correrá (por defecto 5000)
EXPOSE 8080

# Definir el comando para ejecutar Gunicorn con tu aplicación Flask
CMD ["gunicorn", "-w", "4", "-b", "0.0.0.0:8080", "--capture-output", "--log-level", "info", "app:app"]

# gunicorn -w 4 -b 0.0.0.0:8080 --capture-output --log-level info app:app