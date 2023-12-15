# Usa una imagen base de Python
FROM python:3.8

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia el archivo de requerimientos y realiza la instalación de dependencias
COPY requirements.txt .

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto de la aplicación al contenedor
COPY . .

# Expone el puerto 8000 para que sea accesible desde fuera del contenedor
EXPOSE 8000
# Comando para migraciones y ejecutar la aplicación cuando se inicie el contenedor
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
