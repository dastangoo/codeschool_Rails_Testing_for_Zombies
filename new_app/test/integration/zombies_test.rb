require 'test_helper'

class ZombiesTest < ActionDispatch::IntegrationTest
  fixtures :all
  test "Anyone can view zombie information" do
    zombie = zombies(:ash)
    visit zombie_url(zombie)
    
    assert_equal zombie_path(zombie), current_path
    within("h1") do
      assert has_content?(zombie.name)
    end
  end  
  
  test "Navigation is available to the zombie page" do
    zombie = zombie(:ash)
    tweet = tweets(:hello)
    visit root_url
    within("#tweet_#{tweet.id}") do
      click_link zombie.name
      assert_equal zombie_path(zombie), current_path
    end
  end
  
  test "Should create a new zombie" do
    visit root_url
    sign_up_as 'Breins', 'BRREEEIIINNNSSS'
    assert_equal zombie_tweets_path("Breins"), current_path
  end
end
 