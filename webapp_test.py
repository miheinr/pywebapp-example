import webapp
import unittest

class WebappTestCase(unittest.TestCase):

    def setUp(self):
        webapp.app.testing = True
        self.app = webapp.app.test_client()

    def test_hello_world(self):
        rv = self.app.get('/')
        assert b'Hello, World!' in rv.data

    def test_hello_name(self):
        name = 'a_Name'
        expected = f'Hello, {name}!'.encode()
        rv = self.app.get(f'/{name}')
        assert expected in rv.data

if __name__ == '__main__':
    unittest.main()
