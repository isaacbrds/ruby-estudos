class ArticlePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def edit?
    user&.admin? || user&.id == record.user_id
  end
  def update?
    user&.admin? || user&.id == record.user_id
  end

  def destroy?
    user&.admin? || user&.id == record.user_id
  end
end
