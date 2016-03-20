class RegistrationsController < Devise::RegistrationsController

    def new
        @company = Company.all

       #<%= f.input :person_id,:collection => @people,:value_method => :id,:name => "Pessoa", prompt: "Selecione a Pessoa" %>
        super
        #@user.build_person
    end

    def create
        super
    end
    private
        def sign_up_params
            params.require(:user).permit(:company_id, :name, :cpf, :phone, :celphone, :email, :password, :password_confirmation)
                #person_atributes => [ :name, :cpf, :phone, :celphone])
        end

        def account_update_params
            params.require(:user).permit(:company_id, :name, :cpf, :phone, :celphone)
        end
end