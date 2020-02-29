class User < ApplicationRecord
  # Direct associations

  has_many   :likes,
             :foreign_key => "fan_id",
             :dependent => :destroy

  has_many   :own_photos,
             :class_name => "Photo",
             :foreign_key => "owner_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :username, :uniqueness => true

  validates :username, :presence => { :message => "Username can't be blank..." }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
