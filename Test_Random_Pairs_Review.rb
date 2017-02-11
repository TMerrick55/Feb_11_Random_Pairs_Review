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

	def test_teams_RWBY_JNPR_and_CFVY_plus_extra
		pairs = create_partners(['Ruby', 'Weiss', 'Blake', 'Yang', 'Jaune', 'Nora', 'Pyrrha', 'Ren', 'Coco', 'Fox', 'Velvet', 'Yatsu', 'Cinder', 'Emerald'])
		assert_equal(7, pairs.count)
	end

	def test_Salem_faction
		pairs = create_partners(['Salem', 'Tyrian', 'Hazel', 'Dr. Watts', 'Cinder', 'Lionheart'])
		assert_equal(3, pairs.count)
	end

	def test_dead_or_believed_to_be_dead_RWBY_Characters
		pairs = create_partners(['Summer', 'Pyrrha', 'Ozpin', 'Penny'])
		assert_equal(2, pairs.count)
	end
end