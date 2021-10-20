#!/root/anaconda3/bin/python
# -*- coding: utf8 -*- 

from nest import *
#from numpy import *

nest1 = [{1: 3, 2: 2}, 'stuff', [1, 2, 'bob', {'h': 2, 's': 5}]]
nest_no_data = get_structure(nest1)

print(nest_no_data)

seq = flatten(nest1)
nest2 = pack_sequence_as(seq, nest1)
nest3 = pack_sequence_as(seq, nest_no_data)

print("seq: ", seq)
print("nest2: ", nest2)
print("nest3: ", nest3)


assert nest1 == nest2
assert nest1 == nest3

try:
    nest2 = pack_sequence_as(seq[1:], nest1)
    print("nest2: ", nest2)
    assert False
except Exception:
    pass

assert has_same_structure(nest2, nest3)
nest2[0][1] = 123
print(nest2)
assert has_same_structure(nest2, nest3)
nest2[0][1] = [1, 2]
assert not has_same_structure(nest2, nest3)
nest2[0][4] = 3
nest2[0][1] = 3
assert not has_same_structure(nest2, nest3)
del nest2[0][1]
print(nest2)
assert not has_same_structure(nest2, nest3)

def map_fn(x):
    if isinstance(x, str):
        return x + '!'
    else:
        return x + 1
nest_mapped = map_structure(map_fn, nest1)
assert has_same_structure(nest_mapped, nest1)
nest_mapped2 = [{1: 4, 2: 3}, 'stuff!',
                [2, 3, 'bob!', {'h': 3, 's': 6}]]
assert nest_mapped == nest_mapped2

print([0. for _ in range(10)])
