require 'test_helper'

class CompaniesControllerTest < ActionController::TestCase
  setup do
    @company = companies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company" do
    assert_difference('Company.count') do
      post :create, company: { cnpj: @company.cnpj, dt_last_consultation: @company.dt_last_consultation, name: @company.name, obs: @company.obs, phone: @company.phone, total_consultation: @company.total_consultation, total_strategy: @company.total_strategy, used_consultation: @company.used_consultation, used_strategy: @company.used_strategy }
    end

    assert_redirected_to company_path(assigns(:company))
  end

  test "should show company" do
    get :show, id: @company
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @company
    assert_response :success
  end

  test "should update company" do
    patch :update, id: @company, company: { cnpj: @company.cnpj, dt_last_consultation: @company.dt_last_consultation, name: @company.name, obs: @company.obs, phone: @company.phone, total_consultation: @company.total_consultation, total_strategy: @company.total_strategy, used_consultation: @company.used_consultation, used_strategy: @company.used_strategy }
    assert_redirected_to company_path(assigns(:company))
  end

  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete :destroy, id: @company
    end

    assert_redirected_to companies_path
  end
end
