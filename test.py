import json

try:
    with open("sa-gdrive.json", "r") as file:
        data = json.load(file)
        print("JSON válido:", data)
except json.JSONDecodeError as e:
    print("Error en el archivo JSON:", e)