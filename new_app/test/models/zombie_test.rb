require 'test_helper'

class ZombieTest < ActiveSupport::TestCase
  
  def setup
    @z = zombies(:ash)
  end
  
  def assert_presence(model, field)
    model.valid?
    assert_match /can't be blank/, model.errors[field].join, "Presence error for #{field} not found on #{model.class}"
  end
  # test "should contain only tweets that belong to zombie" do
  #   assert z.tweets.all? { |t| t.zombie == z }
  # end
  
  # test "can generate avatar_url" do
  #   assert_equal "http://zombitar.com/#{z.id}.jpg", z.avatar_url
  # end
  
  test "invalid name gives error message" do
    @z.name = nil
    # assert_presence(@z, :name)
    should validate_presence_of(:name) 
    # should validate_presence_of(:graveyard)
    # should ensure_length_of(:name).is_at_most(15)
    # should have_many(:tweets)
    # should validate_uniqueness_of(:name)
    # should ensure_length_of(:password).is_at_least(5).is_at_most(20)
    # should validate_numericality_of(:age)
    # should_not allow_value("blah").for(:email)
    # should allow_value("a@b.com").for(:email)
    # should ensure_inclusion_of(:age).in_range(1..10)
    # should_not allow_mass_assignment_of(:password)
    # should belong_to(:zombie)
    # should validate_acceptance_of(:terms_of_service )
  end
  
  test "invalid graveyard gives error message" do
    @z.graveyard = nil
    assert(@z, :graveyard)
  end
end
