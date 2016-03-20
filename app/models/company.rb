class Company < ActiveRecord::Base
    has_many :users
    validates :name, :cnpj, :phone, :total_strategy, :total_consultation,  presence: true
    validates :cnpj, uniqueness: true
end
