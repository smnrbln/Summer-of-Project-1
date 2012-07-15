class Ability
  include CanCan::Ability

  def initialize(user)
   user ||= User.new # guest user (not logged in)

    if user.role? :Ogrenci
      can :read, Proje
    end

    if user.role? :Hoca
      can :manage, Proje, :user_id => user.id
      can :read, Proje
    end

    if user.role? :Admin
      can :manage, Proje
    end
   
  end
end
