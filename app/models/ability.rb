# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the user here. For example:
    #
    user ||= User.new # Guest user (not logged in)

    if user.admin?
      can :manage, :all
    elsif user.moderator?
      can :read, Article
      can :update, Article
    elsif user.user?
      can :manage, Article
      # Define other abilities for regular users here
    else
      can :read, Article
    end
      # Define abilities for guest users here
      # return unless user.present?
    # can :read,Article :all 
      # return unless user.admin?

      # can :manage,Article,:all
     
      # can :read,Artcicle,:all
    
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, published: true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/blob/develop/docs/define_check_abilities.md
  end
end
