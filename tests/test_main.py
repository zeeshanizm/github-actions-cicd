from app.main import app


def test_health():
    client = app.test_client()
    response = client.get('/health')
    assert response.status_code == 200
    assert response.json == {'status': 'healthy'}


def test_home():
    response = app.test_client().get('/')
    assert response.status_code == 200
    assert response.json['status'] == 'ok'
