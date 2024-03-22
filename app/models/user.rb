class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_update :update_user_credentials

  has_one_attached:avatar

  has_many:articles, dependent: :destroy
  has_many:comments, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :lockable

  enum :gender, [:male, :female] 

  enum role: {user:0,admin:1, moderator:2}  
     
  private

  def update_user_credentials
      
              WelcomeMailer.updated_credentials(self).deliver_now
        
  end
         
  end
