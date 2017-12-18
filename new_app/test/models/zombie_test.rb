require 'test_helper'

class ZombieTest < ActiveSupport::TestCase
  test "decapitate should set status to dead again" do
    @zombie.weapon.stubs(:slice)
    @zombie.decapitate
    assert_equal "dead again", @zombie.status 
  end
  test "decapitate should call slice" do
    @zombie.weapon.expects(:slice)
    @zombie.decapitate
  end
  
  test "geolocate calls the Zoogle graveyard locator" do
    Zoogle.expects(:graveyard_locator).with(@zombie.graveyard).returns({latitude: 2, longitude: 3 })
    @zombie.geolocate
  end
  
  test "geolocate returns properly formatted lat, long" do
    Zoogle.stubs(:graveyard_locator).with(@zombie.graveyard).returns({latitude: 2, longitude: 3})
    assert_equal "2, 3", @zombie.geolocate
  end
  test "geolocate_with_object properly formatted lat, long" do
    loc = stub(latitude: 2, longitude: 3)
    Zoogle.stubs(:graveyard_locator).returns(loc)
    assert_equal "2, 3", @zombie.geolocate_with_object
  end
end
