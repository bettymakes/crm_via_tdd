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

  def test_contact_lookup_helper_method
    @db.add(1000, "Frank", "Budkis", "weeddad420@hotmail.com", "blazeit")
    assert @db.find_contact("Frank")
    assert_equal nil, @db.find_contact("poop")
  end

  def test_display_contacts_by_attribute
    @db.add(1000, "Frank", "Budkis", "weeddad420@hotmail.com", "blazeit")
    @db.add(1001, "Fran", "Budis", "hotmail.com", "fgt")
    assert_equal [1000, 1001],        @db.display_by_attribute("id")
    assert_equal ["Frank", "Fran"],   @db.display_by_attribute("firstname")
    assert_equal ["blazeit", "fgt"],  @db.display_by_attribute("notes")
  end

  # def test_display_all
  #   @db.add(1000, "Frank", "Budkis", "weeddad420@hotmail.com", "blazeit")
  #   @db.add(1001, "Fran", "Budis", "hotmail.com", "fgt")

  #   assert_equal "ID:         1000
  #                 First name: Frank
  #                 Last name:  Budkis
  #                 Email:      weeddad420@hotmail.com
  #                 Notes:      blazeit

  #                 ID:         1001
  #                 First name: Fran
  #                 Last name:  Budis
  #                 Email:      hotmail.com
  #                 Notes:      fgt",
  #                 puts @db.display_all
  # end

end
