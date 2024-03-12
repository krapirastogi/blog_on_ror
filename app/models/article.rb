class Article < ApplicationRecord
include Visible
  belongs_to :user
  has_many:comments , dependent: :destroy
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
    
    # before_validation :check_before_validation
    # after_validation  :check_after_validation
    # before_save  :check_before_save
    # after_save :check_after_save
    # around_save :check_around_save
    # before_create :check_before_create
    # after_create  :check_after_create
    # around_create :check_around_create
    # before_destroy :check_before_destroy
    # around_destroy :check_around_destroy
    # after_destroy :check_after_destroy
    # after_commit :check_after_commit
    # after_rollback :check_after_rollback
    

    # def check_before_validation
    #    puts "before validation check"
    # end

    # def check_before_save
    #   puts "before save check"
    # end

    # def check_before_create
    #     puts "before create check"
    # end
        
    # def check_before_destroy
    #   puts "before destroy check"
    # end
   
   

    # def check_after_validation
    #   puts "after validation check"
    # end

    # def check_after_create
    #   puts "after create check"
    # end
    
    # def check_after_destroy
    #   puts "after destroy check"
    # end

    # def check_after_save
    #   puts "after save check"
    # end

    # def check_after_commit
    #   puts "after commit check"
    # end

    # def check_after_rollback
    #   puts "after rollback check"
    # end

    

    # def check_around_create
    #   puts "around create chcek"
    # end

    # def check_around_save
    #    puts "around create save"
    # end

    # def check_around_destroy
    #   puts "around destroy check"
    # end
  end
  
