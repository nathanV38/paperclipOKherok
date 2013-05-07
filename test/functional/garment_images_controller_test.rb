require 'test_helper'

class GarmentImagesControllerTest < ActionController::TestCase
  setup do
    @garment_image = garment_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:garment_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create garment_image" do
    assert_difference('GarmentImage.count') do
      post :create, garment_image: { : @garment_image., : @garment_image., caption: @garment_image.caption, garment_id: @garment_image.garment_id }
    end

    assert_redirected_to garment_image_path(assigns(:garment_image))
  end

  test "should show garment_image" do
    get :show, id: @garment_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @garment_image
    assert_response :success
  end

  test "should update garment_image" do
    put :update, id: @garment_image, garment_image: { : @garment_image., : @garment_image., caption: @garment_image.caption, garment_id: @garment_image.garment_id }
    assert_redirected_to garment_image_path(assigns(:garment_image))
  end

  test "should destroy garment_image" do
    assert_difference('GarmentImage.count', -1) do
      delete :destroy, id: @garment_image
    end

    assert_redirected_to garment_images_path
  end
end
