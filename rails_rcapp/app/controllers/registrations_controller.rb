class RegistrationsController < Devise::RegistrationsController

    private
  
    def sign_up_params
      params.require(:user).permit(:cedula, :nombre, :apellido, :celular, :fechanacimiento, :direccion, :barrio, :edificio, :genero, :empresa, :numeroeaab, :jac, :perfil_id, :localidad_id, :email, :password, :password_confirmation)
    end
  
    def account_update_params
      params.require(:user).permit(:cedula, :nombre, :apellido, :celular, :fechanacimiento, :direccion, :barrio, :edificio, :genero, :empresa, :numeroeaab, :jac, :perfil_id, :localidad_id, :email, :password, :password_confirmation, :current_password)
    end
  end