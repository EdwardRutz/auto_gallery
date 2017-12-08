require 'test_helper'

class AutosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @auto = autos(:one)
  end

  test "should get index" do
    get autos_url
    assert_response :success
  end

  test "should get new" do
    get new_auto_url
    assert_response :success
  end

  test "should create auto" do
    assert_difference('Auto.count') do
      post autos_url, params: { auto: { auto_description: @auto.auto_description, auto_img: @auto.auto_img, condition: @auto.condition, date_sold: @auto.date_sold, featured: @auto.featured, list_price: @auto.list_price, make: @auto.make, mileage: @auto.mileage, model: @auto.model, price_sold: @auto.price_sold, price_sold: @auto.price_sold, purchase_date: @auto.purchase_date, purchase_price: @auto.purchase_price, sold: @auto.sold, sold_by: @auto.sold_by, trim: @auto.trim, user_id: @auto.user_id, vin: @auto.vin, year: @auto.year } }
    end

    assert_redirected_to auto_url(Auto.last)
  end

  test "should show auto" do
    get auto_url(@auto)
    assert_response :success
  end

  test "should get edit" do
    get edit_auto_url(@auto)
    assert_response :success
  end

  test "should update auto" do
    patch auto_url(@auto), params: { auto: { auto_description: @auto.auto_description, auto_img: @auto.auto_img, condition: @auto.condition, date_sold: @auto.date_sold, featured: @auto.featured, list_price: @auto.list_price, make: @auto.make, mileage: @auto.mileage, model: @auto.model, price_sold: @auto.price_sold, price_sold: @auto.price_sold, purchase_date: @auto.purchase_date, purchase_price: @auto.purchase_price, sold: @auto.sold, sold_by: @auto.sold_by, trim: @auto.trim, user_id: @auto.user_id, vin: @auto.vin, year: @auto.year } }
    assert_redirected_to auto_url(@auto)
  end

  test "should destroy auto" do
    assert_difference('Auto.count', -1) do
      delete auto_url(@auto)
    end

    assert_redirected_to autos_url
  end
end
