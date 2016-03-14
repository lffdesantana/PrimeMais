class RegistrationsController < Devise::RegistrationsController
    def new
        @people = Person.where('id NOT IN (?)', User.select("person_id"))
        super
    end
    private
        def sign_up_params
            params.require(:user).permit(:person_id, :email, :password, :password_confirmation)
        end

        def account_update_params
            params.require(:user).permit(:person_id, :email, :password, :password_confirmation, :current_password)
        end
end