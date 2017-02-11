require 'minitest/autorun'
require_relative 'Random_Pairs_Review.rb'

class TestPairsArray < Minitest::Test

	def test_team_RWBY_is_two_pairs()
		pairs = create_partners(['Ruby', 'Weiss', 'Blake', 'Yang'])
		assert_equal(2, pairs.count)
	end
end