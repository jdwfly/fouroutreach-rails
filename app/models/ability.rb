class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    can :create, Prospect
    can :read, Prospect, user_id: user.id
    can :update, Prospect, user_id: user.id
    can :destroy, Prospect, user_id: user.id

    can :create, Followup, prospect: { user_id: user.id }
    can :read, Followup, prospect: { user_id: user.id }
    can :update, Followup, prospect: { user_id: user.id }
    can :destroy, Followup, prospect: { user_id: user.id }
  end
end
