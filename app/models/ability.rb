class Ability
  include CanCan::Ability

  def initialize(user)
    if user
      if user.role == "admin"
        can :manage, :all
      elsif user.role == "manager"
        can [:index, :show], Node
        can [:index, :show, :new, :edit, :create, :update], [User, Node]
      elsif user.role == "user"
        can [:show, :edit, :update, :destroy], User, :id => user.id
      end
    else
      can :create, User
    end
  end
end
