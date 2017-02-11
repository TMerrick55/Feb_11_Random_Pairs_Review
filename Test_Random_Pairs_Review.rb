require 'minitest/autorun'
require_relative 'Random_Pairs_Review.rb'

class TestPairsArray < Minitest::Test

	def test_team_RWBY()
		pairs = create_partners(['Ruby', 'Weiss', 'Blake', 'Yang'])
		assert_equal(2, pairs.count)
	end

	def test_teams_RWBY_and_JNPR()
		pairs = create_partners(['Ruby', 'Weiss', 'Blake', 'Yang', 'Jaune', 'Nora', 'Pyrrha', 'Ren'])
		assert_equal(4, pairs.count)
	end

	def test_teams_RWBY_JNPR_and_CFVY
		pairs = create_partners(['Ruby', 'Weiss', 'Blake', 'Yang', 'Jaune', 'Nora', 'Pyrrha', 'Ren', 'Coco', 'Fox', 'Velvet', 'Yatsu'])
		assert_equal(6, pairs.count)
	end
end