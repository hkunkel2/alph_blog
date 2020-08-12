require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

    def setup
        @category = Category.new(name: "Sports")
    end
    
   test "category should be valid" do
    
    assert @category.valid?
   end

   test "name should be present" do
    @category.name = " "
    assert_not @category.valid?
   end

   test "name should be unique" do
    @category.save
    @category2 = Category.new(name: "Sports") 
    assert_not @category2.valid?
   end

   test "name length is not too long" do 
    @category.name = "a"*26
    assert_not @category.valid?
   end

   test "nameis not too short" do 
    @category.name = "hi"
    assert_not @category.valid?
   end

end