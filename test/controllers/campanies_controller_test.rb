require 'test_helper'

class CampaniesControllerTest < ActionController::TestCase
  setup do
    @campany = campanies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campanies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create campany" do
    assert_difference('Campany.count') do
      post :create, campany: { cnpj: @campany.cnpj, dt_last_consultation: @campany.dt_last_consultation, name: @campany.name, obs: @campany.obs, phone: @campany.phone, total_consultation: @campany.total_consultation, total_strategy: @campany.total_strategy, used_consultation: @campany.used_consultation, used_strategy: @campany.used_strategy }
    end

    assert_redirected_to campany_path(assigns(:campany))
  end

  test "should show campany" do
    get :show, id: @campany
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @campany
    assert_response :success
  end

  test "should update campany" do
    patch :update, id: @campany, campany: { cnpj: @campany.cnpj, dt_last_consultation: @campany.dt_last_consultation, name: @campany.name, obs: @campany.obs, phone: @campany.phone, total_consultation: @campany.total_consultation, total_strategy: @campany.total_strategy, used_consultation: @campany.used_consultation, used_strategy: @campany.used_strategy }
    assert_redirected_to campany_path(assigns(:campany))
  end

  test "should destroy campany" do
    assert_difference('Campany.count', -1) do
      delete :destroy, id: @campany
    end

    assert_redirected_to campanies_path
  end
end
