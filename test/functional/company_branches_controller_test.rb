require 'test_helper'

class CompanyBranchesControllerTest < ActionController::TestCase
  setup do
    @company_branch = company_branches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:company_branches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create company_branch" do
    assert_difference('CompanyBranch.count') do
      post :create, :company_branch => @company_branch.attributes
    end

    assert_redirected_to company_branch_path(assigns(:company_branch))
  end

  test "should show company_branch" do
    get :show, :id => @company_branch.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @company_branch.to_param
    assert_response :success
  end

  test "should update company_branch" do
    put :update, :id => @company_branch.to_param, :company_branch => @company_branch.attributes
    assert_redirected_to company_branch_path(assigns(:company_branch))
  end

  test "should destroy company_branch" do
    assert_difference('CompanyBranch.count', -1) do
      delete :destroy, :id => @company_branch.to_param
    end

    assert_redirected_to company_branches_path
  end
end
