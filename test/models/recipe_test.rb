require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
	
	def setup
		@recipe = Recipe.new(name: "Chicken parm", summary: "Best chicken parm recipe ever", 
			description: "start with fresh chicken & marinate with yogurt and spicies mix all night")
	end
    
    test "recipe should be valid" do
      assert @recipe.valid?	
    end

    test "name should be present" do
    	@recipe.name = " "
    	assert_not @recipe.valid?
    end
 
    test "name legnth should not be too long" do
        @recipe.name = "x" * 101
        assert_not @recipe.valid?
    end

    test "name legnth should not be too short" do
    	@recipe.name = "x" * 4
        assert_not @recipe.valid?
    end

    test "summary must be present" do
    	@recipe.summary = " "
    	assert_not @recipe.valid?    	
    end

    test "summary legnth should not be too long" do
      @recipe.summary = "x" * 151
       assert_not @recipe.valid?
    end

    test "summary legnth should not be too short" do
       @recipe.summary = "x" * 9
       assert_not @recipe.valid?
    end

    test "description must be present" do
    	@recipe.description = " "
    	assert_not @recipe.valid?
    end

    test "description legnth should not be too long" do
    	@recipe.description = "x"*501
        assert_not @recipe.valid?
    end

    test "description legnth should not be too short" do
    	@recipe.description = "x"*19
        assert_not @recipe.valid?
    end


end
