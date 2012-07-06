class Ability
  include CanCan::Ability

  def initialize(user)
     user ||= User.new # guest user (not logged in)

    if user.role? :Student
      can :read, Project
    end

    if user.role? :Author
      can :manage, Project, :user_id => user.id
      can :read, Project
    end

    if user.role? :Admin
      can :manage, Project
    end

  end
end
