class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #enums
  enum role: {user: 0, admin: 1}
  #Associations
  has_one :reviews, dependent: :destroy

  
end
