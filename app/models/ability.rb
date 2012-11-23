class Ability
  include CanCan::Ability

  def initialize(user)
    if user.has_role? :admin
      can :manage, :all
    # elsif user.has_role? :moderator
      can :edit, :all
    else
      can :read, :all
    end
  end
end
