require "test_helper"

class GymProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gym_product = gym_products(:one)
  end

  test "should get index" do
    get gym_products_url
    assert_response :success
  end

  test "should get new" do
    get new_gym_product_url
    assert_response :success
  end

  test "should create gym_product" do
    assert_difference('GymProduct.count') do
      post gym_products_url, params: { gym_product: { description: @gym_product.description, name: @gym_product.name, numInStock: @gym_product.numInStock, price: @gym_product.price } }
    end

    assert_redirected_to gym_product_url(GymProduct.last)
  end

  test "should show gym_product" do
    get gym_product_url(@gym_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_gym_product_url(@gym_product)
    assert_response :success
  end

  test "should update gym_product" do
    patch gym_product_url(@gym_product), params: { gym_product: { description: @gym_product.description, name: @gym_product.name, numInStock: @gym_product.numInStock, price: @gym_product.price } }
    assert_redirected_to gym_product_url(@gym_product)
  end

  test "should destroy gym_product" do
    assert_difference('GymProduct.count', -1) do
      delete gym_product_url(@gym_product)
    end

    assert_redirected_to gym_products_url
  end
end
