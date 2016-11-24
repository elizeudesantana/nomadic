class Ability
  include CanCan::Ability
  def initialize(usuario)
    if usuario.admin?
      can :manage, :all
    else
      can [:read, :update, :destroy], Car
      can :manage, Usuario
    end
  end
end
