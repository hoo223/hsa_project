"""Util for nested lists, tuple, and dictionaries of python objects."""
# nest -> 중첩 구조


class NestTupleItem(tuple):
    """A tuple which is recognized as an item in a nested structure."""

    pass


def is_item(nest): # 중첩된 구조가 없는 single item인지 판단
    """Check if a nest consists of a single item with no structure."""
    if isinstance(nest, NestTupleItem): # 첫 번째 인자의 타입 또는 클래스가 두 번째인자와 일치하는지 판단 
        return True
    return not isinstance(nest, (list, tuple, dict))


def get_structure(nest):
    """Return a nest with the same structure, but without the data."""
    # ex) nest = [{1: 3, 2: 2}, 'stuff', [1, 2, 'bob', {'h': 2, 's': 5}]]
    # get_structure(nest) -> [{1: None, 2: None}, None, [None, None, None, {'h': None, 's': None}]]
    if is_item(nest):
        return None

    elif isinstance(nest, (list, tuple)):
        struct = []
        for t in nest:
            struct.append(get_structure(t))
        return struct

    else:  # nest is a dict.
        struct = {}
        for k in nest:
            struct[k] = get_structure(nest[k])
        return struct


def flatten(nest): 
    """Flattens a nest to a list."""
    if is_item(nest): # 중첩된 구조가 아니면 이미 flatten된 상태이므로
        return [nest] # 그대로 반환

    elif isinstance(nest, (list, tuple)): # list 또는 tuple일 경우
        out = []
        for x in nest: 
            out.extend(flatten(x)) 
        return out # 중첩된 list나 tuple을 풀어 하나의 list로 만듦 
                   # ex) nest: [{1: 3, 2: 2}, 'stuff', [1, 2, 'bob', {'h': 2, 's': 5}]] 
                   #     flatten(nest) -> [3, 2, 'stuff', 1, 2, 'bob', 2, 5]

    else:  # nest is dict.
        out = []
        try:
            sorted_keys = sorted(list(nest.keys()))
        except Exception:
            raise ValueError("The keys of dictionaries in nest must be "
                             "sortable!")
        for k in sorted_keys:
            out.extend(flatten(nest[k]))
        return out 


def pack_sequence_as(seq, nest): # seq의 value들을 nest의 구조로 변환 
    """Packs a list/tuple with the structure of nest."""
    # ex) seq:  [3, 2, 'stuff', 1, 2, 'bob', 2, 5]
    #     nest: [{1: None, 2: None}, None, [None, None, None, {'h': None, 's': None}]]
    #     pack_sequence_as(seq, nest) -> [{1: 3, 2: 2}, 'stuff', [1, 2, 'bob', {'h': 2, 's': 5}]] 
    if is_item(seq) or isinstance(seq, dict):
        raise ValueError("Input must be a list or tuple.")
    new_nest, nused = _pack_sequence_as(seq, nest)
    if nused != len(seq):
        raise ValueError("nest does not have the same structure as seq.")

    return new_nest


def _pack_sequence_as(seq, nest):
    if is_item(nest):
        if seq == []:
            raise ValueError("nest does not have the same structure as seq.")
        return seq[0], 1

    elif isinstance(nest, (list, tuple)): # nest is list or tuple
        ind, out = 0, []
        for x in nest:
            new_nest, nused = _pack_sequence_as(seq[ind:], x)
            out.append(new_nest)
            ind += nused
        return out, ind

    else:  # nest is dict.
        ind, out = 0, {}
        try:
            sorted_keys = sorted(list(nest.keys()))
        except Exception:
            raise ValueError("The keys of dictionaries in nest must be "
                             "sortable!")
        for k in sorted_keys:
            new_nest, nused = _pack_sequence_as(seq[ind:], nest[k])
            out[k] = new_nest
            ind += nused
        return out, ind


def has_same_structure(nest1, nest2): # 두 인자의 구조가 같은지 비교
    """Check if two nests have the same structure."""
    if is_item(nest1):
        return is_item(nest2)

    elif isinstance(nest1, (list, tuple)):
        if not isinstance(nest2, (list, tuple)):
            return False
        if len(nest1) != len(nest2):
            return False
        for a, b in zip(nest1, nest2):
            if not has_same_structure(a, b):
                return False
        return True

    else:  # nest is dict
        if not isinstance(nest2, dict):
            return False
        keys1 = sorted(list(nest1.keys()))
        keys2 = sorted(list(nest2.keys()))
        if len(keys1) != len(keys2):
            return False
        for k1, k2 in zip(keys1, keys2):
            if k1 != k2 or not has_same_structure(nest1[k1], nest2[k2]):
                return False
        return True


def map_structure(map_fn, nest): # 중첩 구조화된 변수에 함수를 mapping
    """Map for nested structures."""
    # map_fn = _to_torch 
    # nest = state
    if is_item(nest): # 중첩된 구조가 없으면 바로 함수를 mapping (각 element에 적용됨)
        return map_fn(nest)
    else: # nest가 중첩된 구조인 경우 
        return pack_sequence_as(list(map(map_fn, flatten(nest))), nest) # flatten(nest) -> 중첩된 구조를 제거 
                                                                        # map -> map function map_fn to each element https://www.daleseo.com/python-map/
                                                                        # list -> convert to list
                                                                        # pack_sequence_as -> nest 형태로 다시 구조화


def zip_structure(*nests):
    """Zip for nested structures.

    Returns None if no nest is provided.
    """
    if len(nests) == 0:
        return None

    for nest in nests[1:]:
        if not has_same_structure(nest, nests[0]):
            raise ValueError("All nests passed to zip_structure must have the "
                             "same structure!")
    flat_nests = [flatten(nest) for nest in nests]
    flat_zipped_nest = [NestTupleItem(item) for item in zip(*flat_nests)]
    return pack_sequence_as(flat_zipped_nest, nests[0])


if __name__ == '__main__':
    import unittest
    import numpy as np

    class TestNest(unittest.TestCase):
        """Test."""

        def test(self):
            """Test."""
            nest = [{1: 3, 2: 2}, 'stuff', [1, 2, 'bob', {'h': 2, 's': 5}]]
            nest_no_data = get_structure(nest)
            seq = flatten(nest)
            nest2 = pack_sequence_as(seq, nest)
            nest3 = pack_sequence_as(seq, nest_no_data)

            assert nest == nest2
            assert nest == nest3
            try:
                nest2 = pack_sequence_as(seq[1:], nest)
                assert False
            except Exception:
                pass
            assert has_same_structure(nest2, nest3)
            nest2[0][1] = 123
            assert has_same_structure(nest2, nest3)
            nest2[0][1] = [1, 2]
            assert not has_same_structure(nest2, nest3)
            nest2[0][4] = 3
            nest2[0][1] = 3
            assert not has_same_structure(nest2, nest3)
            del nest2[0][1]
            assert not has_same_structure(nest2, nest3)

            def map_fn(x):
                if isinstance(x, str):
                    return x + '!'
                else:
                    return x + 1
            nest_mapped = map_structure(map_fn, nest)
            assert has_same_structure(nest_mapped, nest)
            nest_mapped2 = [{1: 4, 2: 3}, 'stuff!',
                            [2, 3, 'bob!', {'h': 3, 's': 6}]]
            assert nest_mapped == nest_mapped2

            assert map_structure(map_fn, 1) == 2
            assert map_structure(map_fn, np.array(1)) == 2

            try:
                zipped_nest = zip_structure(nest, nest_mapped[0])
                assert False
            except Exception:
                pass
            zipped_nest = zip_structure(nest, nest_mapped)
            zipped_nest2 = [{1: NestTupleItem([3, 4]),
                             2: NestTupleItem([2, 3])},
                            NestTupleItem(['stuff', 'stuff!']),
                            [NestTupleItem([1, 2]),
                             NestTupleItem([2, 3]),
                             NestTupleItem(['bob', 'bob!']),
                             {'h': NestTupleItem([2, 3]),
                              's': NestTupleItem([5, 6])}]]
            assert zipped_nest == zipped_nest2

            zipped_nest3 = zip_structure(nest)
            zipped_nest4 = [{1: NestTupleItem([3]),
                             2: NestTupleItem([2])},
                            NestTupleItem(['stuff']),
                            [NestTupleItem([1]),
                             NestTupleItem([2]),
                             NestTupleItem(['bob']),
                             {'h': NestTupleItem([2]),
                              's': NestTupleItem([5])}]]
            assert zipped_nest3 == zipped_nest4

    unittest.main()
