require "minitest/autorun"
require_relative "../database"


class TestDatabase < MiniTest::Unit::TestCase


  def setup
    @db = Database.new
  end

  def test_add_contact_object_to_array
    @db.add(1000, "Frank", "Budkis", "weeddad420@hotmail.com", "blazeit")
    assert_equal 1000,                      @db.contacts[0].id
    assert_equal "Frank",                   @db.contacts[0].firstname
    assert_equal "Budkis",                  @db.contacts[0].lastname
    assert_equal "weeddad420@hotmail.com",  @db.contacts[0].email
    assert_equal "blazeit",                 @db.contacts[0].notes
  end


end
