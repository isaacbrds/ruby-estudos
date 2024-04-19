require "minitest/autorun"

def sum(a,b)
    a + b
end

class TestMatemacia < Minitest::Test
    def test_sum_method
        assert_equal(5, sum(3,2))
    end

    def test_sum_method_novamente
        assert_equal(7, sum(3,3))
    end
end