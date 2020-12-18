import unittest
import cap_2

class TestCap(unittest.TestCase):

    def test_one_word(self):
        text="python"
        result=cap_2.cap_text(text)
        self.assertEqual(result,'Python')


    def test_multiple_word(self):
        text="monty python"
        result=cap_2.cap_text(text)
        self.assertEqual(result,'Monty Python')

if __name__=='__main__':
    unittest.main()