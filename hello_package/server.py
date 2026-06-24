from fastapi import FastAPI

from .main import greet

app = FastAPI()


@app.get("/hello")
def hello(name: str = "World") -> dict:
    return {"message": greet(name)}
