from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware

app = FastAPI()

# El frontend se abre desde localhost:8080 y la API desde localhost:8000.
app.add_middleware(
	CORSMiddleware,
	allow_origins=["http://localhost:8080", "http://127.0.0.1:8080"],
	allow_credentials=False,
	allow_methods=["GET"],
	allow_headers=["*"],
)

@app.get("/")
def leer_mensaje():
	return {"mensaje": "Hola desde la API"}
