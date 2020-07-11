class User < ApplicationRecord
  has_many :lists
  has_many :movies, through: :lists
  has_many :comments, through: :lists

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
end
