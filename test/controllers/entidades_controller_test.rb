require 'test_helper'

class EntidadesControllerTest < ActionController::TestCase
  setup do
    @entidade = entidades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entidade" do
    assert_difference('Entidade.count') do
      post :create, entidade: { cep: @entidade.cep, codEmp: @entidade.codEmp, complemento: @entidade.complemento, numero: @entidade.numero, razaoSocial: @entidade.razaoSocial }
    end

    assert_redirected_to entidade_path(assigns(:entidade))
  end

  test "should show entidade" do
    get :show, id: @entidade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entidade
    assert_response :success
  end

  test "should update entidade" do
    patch :update, id: @entidade, entidade: { cep: @entidade.cep, codEmp: @entidade.codEmp, complemento: @entidade.complemento, numero: @entidade.numero, razaoSocial: @entidade.razaoSocial }
    assert_redirected_to entidade_path(assigns(:entidade))
  end

  test "should destroy entidade" do
    assert_difference('Entidade.count', -1) do
      delete :destroy, id: @entidade
    end

    assert_redirected_to entidades_path
  end
end
