require "application_system_test_case"

class GymProductsTest < ApplicationSystemTestCase
  setup do
    @gym_product = gym_products(:one)
  end

  test "visiting the index" do
    visit gym_products_url
    assert_selector "h1", text: "Gym Products"
  end

  test "creating a Gym product" do
    visit gym_products_url
    click_on "New Gym Product"

    fill_in "Description", with: @gym_product.description
    fill_in "Name", with: @gym_product.name
    fill_in "Numinstock", with: @gym_product.numInStock
    fill_in "Price", with: @gym_product.price
    click_on "Create Gym product"

    assert_text "Gym product was successfully created"
    click_on "Back"
  end

  test "updating a Gym product" do
    visit gym_products_url
    click_on "Edit", match: :first

    fill_in "Description", with: @gym_product.description
    fill_in "Name", with: @gym_product.name
    fill_in "Numinstock", with: @gym_product.numInStock
    fill_in "Price", with: @gym_product.price
    click_on "Update Gym product"

    assert_text "Gym product was successfully updated"
    click_on "Back"
  end

  test "destroying a Gym product" do
    visit gym_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gym product was successfully destroyed"
  end
end
