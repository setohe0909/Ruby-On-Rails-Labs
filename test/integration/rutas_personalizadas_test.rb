require 'test_helper'

class RutasPersonalizadasTest < ActionDispatch::IntegrationTest
  
  test "el /login abre la pagina de inicio de sesion" do
  	get  '/comenzar'
  	assert_response :success
  end

  test "el /logout abre la pagina de cerrar sesion" do
  	get  '/destruir'
  	assert_response :success
  	assert_redirected_tp '/'
  end

  test "el /registro abre la pagina de regiustrar usuario" do
  	get  '/registrar'
  	assert_response :success
  end

end