import unittest
from bai_lam import lay_nhieu, xem_k

class MockStack:
    def __init__(self, data):
        self.a = data[:]
    def lay(self):
        return self.a.pop()

class MockQueue:
    def __init__(self, a, dau, so):
        self.a = a
        self.dau = dau
        self.so = so

class TestBoSung(unittest.TestCase):
    #Kiểm tra k kiểu bool true trong Ngăn xếp
    def test_T13_stack_k_bool(self):
        s = MockStack([10, 20])
        with self.assertRaises(ValueError):
            lay_nhieu(s, True)

    #Kiểm tra hàng đợi quay vòng với k = 0
    def test_T14_queue_k_zero(self):
        q = MockQueue([5, 6, 3, 4], dau=2, so=4)
        result = xem_k(q, 0)
        self.assertEqual(result, [])

if __name__ == "__main__":
    unittest.main()