require "test_helper"

class RecipesControllerTest < ActionDispatch::IntegrationTest
  test "index" do 
    get "/recipes.json"
    assert_response 200 

    data = JSON.parse(response.body)
    assert_equal Recipe.count, data.length
  end 


  test "create" do  
    assert_difference "Recipe.count", 1 do
      post "/recipes.json", params: {name: "Strawberry Cheesekake", ingredients: "strawberries and cheese"}
      assert_response 200 
    end
  end

    test "show" do
      get "/recipes/#{Recipe.first.id}.json"
      assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "created_at", "updated_at", "url"], data.keys 
  end 

  test "update" do 
    recipe = Recipe.first 
    patch "/recipes/#{recipe.id}.json", params: {name: "Green Bean Casserole"}
    assert_response 200 

    data = JSON.parse(response.body)
    assert_equal "Green Bean Casserole", 
end 