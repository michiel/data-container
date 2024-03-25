# API_KEY = os.getenv('API_KEY', '')

SQLALCHEMY_DATABASE_URI = \
    'postgresql+psycopg2://postgres:postgres@postgres:5432/superset'
SQLALCHEMY_TRACK_MODIFICATIONS = True
SECRET_KEY = '123123123123'
AUTH_ROLE_PUBLIC = 'Public'
PUBLIC_ROLE_LIKE = None
