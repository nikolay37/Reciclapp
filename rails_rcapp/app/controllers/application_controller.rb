class ApplicationController < ActionController::Base
    
    #protect_from_forgery with: :exception

    #before_action :authenticate_user!
    #before_action :configure_permitted_parameters, if: :devise_controller?
    #before_filter :configure_permitted_parameters, if: :devise_controller?

    #protected

    #def configure_permitted_parameters
     #   devise_parameter_sanitizer.permit(:sign_up, keys: [:cedula, :nombre, :apellido, :celular, :fechanacimiento, :direccion, :barrio, :edificio, :genero, :empresa, :numeroeaab, :jac, :perfil_id, :localidad_id, :email, :password, :remember_me])
       # devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password, :remember_me])
      #  devise_parameter_sanitizer.permit(:account_update, keys: [:cedula, :nombre, :apellido, :celular, :fechanacimiento, :direccion, :barrio, :edificio, :genero, :empresa, :numeroeaab, :jac, :perfil_id, :localidad_id, :update, :email, :password, :current_password])
      #end

      def sign_up_params
        devise_parameter_sanitizer.sanitize(:sign_up)
      end

      def account_update_params
        devise_parameter_sanitizer.sanitize(:account_update)
      end

end

