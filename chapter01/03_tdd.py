import unittest

class AdditionTestCase(unittest.TestCase):
  def test_main(self):
    result = addition(3, 2)
    assert result == 5

  def test_three(self):
    result = addition(3, 2, 2)
    assert result == 7

  def test_noargs(self):
    result = addition()
    assert result == 0

def addition(*args):
  total = 0
  for a in args:
    total += a
  return total


if __name__ == '__main__':
    unittest.main()