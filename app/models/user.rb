class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many:articles, dependent: :destroy
  has_many:comments, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :lockable
  enum gender: [:unknown, :male, :female] 
  enum role: {admin:1, moderator:2}  
     

         
  end
