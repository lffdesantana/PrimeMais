class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    include Pundit
    protect_from_forgery with: :exception

    #Adaptando a mensagem de erro do Puntid (Controle de Usuarios])
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

private
    def user_not_authorized
        flash[:notice] = "Voce nao tem permissao para fazer esta acao!"
        redirect_to(request.referrer || root_path)
    end

end
