class Person < ActiveRecord::Base
    has_one :user

    validates :name, :cpf, :phone,  presence: true
end
