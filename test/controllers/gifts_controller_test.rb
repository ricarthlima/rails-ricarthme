require 'test_helper'

class GiftsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gift = gifts(:one)
  end

  test "should get index" do
    get gifts_url
    assert_response :success
  end

  test "should get new" do
    get new_gift_url
    assert_response :success
  end

  test "should create gift" do
    assert_difference('Gift.count') do
      post gifts_url, params: { gift: { active: @gift.active, description: @gift.description, name: @gift.name, price: @gift.price, url_image: @gift.url_image, url_prod: @gift.url_prod, wishlevel: @gift.wishlevel } }
    end

    assert_redirected_to gift_url(Gift.last)
  end

  test "should show gift" do
    get gift_url(@gift)
    assert_response :success
  end

  test "should get edit" do
    get edit_gift_url(@gift)
    assert_response :success
  end

  test "should update gift" do
    patch gift_url(@gift), params: { gift: { active: @gift.active, description: @gift.description, name: @gift.name, price: @gift.price, url_image: @gift.url_image, url_prod: @gift.url_prod, wishlevel: @gift.wishlevel } }
    assert_redirected_to gift_url(@gift)
  end

  test "should destroy gift" do
    assert_difference('Gift.count', -1) do
      delete gift_url(@gift)
    end

    assert_redirected_to gifts_url
  end
end
