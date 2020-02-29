class User < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :username, :presence => { :message => "Username can't be blank..." }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
