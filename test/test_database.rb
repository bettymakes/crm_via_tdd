require "minitest/autorun"
require_relative "../database"


class TestDatabase < MiniTest::Unit::TestCase


  def setup
    @db = Database.new
    @db.add(1000, "Frank", "Budkis", "weeddad420", "blazeit")
    @db.add(1001, "Fran", "Budis", "hotmail.com", "no")

  end

  def test_add_contact_object_to_array
    assert_equal 1000,                      @db.contacts[0].id
    assert_equal "Frank",                   @db.contacts[0].firstname
    assert_equal "Budkis",                  @db.contacts[0].lastname
    assert_equal "weeddad420",              @db.contacts[0].email
    assert_equal "blazeit",                 @db.contacts[0].notes
  end

  def test_contact_lookup_helper_method
    assert @db.find_contact(1000)
    assert_equal nil, @db.find_contact(999)
  end

  def test_display_contacts_by_attribute
    assert_equal [1000, 1001],                  @db.display_by_attribute("id")
    assert_equal ["Frank", "Fran"],             @db.display_by_attribute("firstname")
    assert_equal ["blazeit", "no"],            @db.display_by_attribute("notes")
    assert_equal ["weeddad420", "hotmail.com"], @db.display_by_attribute("email")
    assert_equal ["Budkis", "Budis"],           @db.display_by_attribute("lastname")
  end

  # def test_display_all
  #   @db.add(1000, "Frank", "Budkis", "weeddad420@hotmail.com", "blazeit")
  #   @db.add(1001, "Fran", "Budis", "hotmail.com", "no")
  # end

  def test_modify_contact
    contact = @db.find_contact(1000)
    assert_equal "Frank", contact.firstname
    @db.modify(1000, "firstname", "FRANCIS")
    assert_equal "FRANCIS", contact.firstname
  end

  def test_display_single_contact
    result = @db.display_single_contact(1000)
    assert result.include? "Frank"
  end

  def test_delete_contact
    @db.remove(1000)
    @db.remove(1001)
    assert @db.contacts.empty?
  end



end
