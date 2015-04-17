class PerfilController < ApplicationController

  def show
  	@user = User.find_by_nombre_perfil(params[:id])
  	if @user
  		@statuses = @user.statuses.all
  		render action: :show
  	else
  		render file: 'public/404', status: 404, format: [:html]
  end

end
