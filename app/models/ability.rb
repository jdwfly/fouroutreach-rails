class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    can :create, Prospect
    can :read, Prospect, user_id: user.id
    can :update, Prospect, user_id: user.id
    can :delete, Prospect, user_id: user.id
  end
end
