#V2
from unittest.mock import Mock

def read_file(f):
  print("READING ALL FILE")
  return f.read()

m = Mock()
m.read.return_value = "Hello World"
result = read_file(m)
print(result)
print(m.read.call_count)
print(m.read.assert_called_with('some argument'))

'''
#V1
from unittest.mock import Mock

def read_file(f):
  print("READING ALL FILE")
  return f.read()

m = Mock()
result = read_file(m)
print(result)
'''