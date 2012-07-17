class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    if user.role? :ogrenci
      can :read, Proje
    end

    if user.role? :gyonetici
      can :read, Proje
    end

    if user.role? :hoca
      can :manage, Proje, :user_id => user.id
      can :read, Proje
    end

    if user.role? :admin
      can :manage, Proje
    end
  end
end
