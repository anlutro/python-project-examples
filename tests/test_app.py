import pytest


@pytest.fixture
def app():
	# dirty hack! use app factories instead
	from myproject import app
	return app


def test_api_ping(client):
    res = client.get('/')
    assert res.data == b'It works!'
