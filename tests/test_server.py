from fastapi.testclient import TestClient

from hello_package.server import app


client = TestClient(app)


def test_hello_default() -> None:
    response = client.get("/hello")
    assert response.status_code == 200
    assert response.json() == {"message": "Hello, World!"}


def test_hello_with_name() -> None:
    response = client.get("/hello", params={"name": "Python"})
    assert response.status_code == 200
    assert response.json() == {"message": "Hello, Python!"}
