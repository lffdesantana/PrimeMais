class User < ActiveRecord::Base
    EMAIL_REGEXP = /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
    belongs_to :person
    enum role:[:normal_user, :admin]
    validates :person_id, :email,  presence: true
    validates :email, uniqueness: true

    validates_format_of :email, with: EMAIL_REGEXP
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
