class Agenda < ApplicationRecord
  belongs_to :team
  belongs_to :user
  has_many :articles, dependent: :destroy

  def check_can_destroy?(current_user)
    team_owner_id = team.owner_id
    maker_id = user_id
    unless current_user.id == team_owner_id || current_user.id == maker_id
      errors.add(user.email, ": 削除権限がありません")
      false
    else
      true
    end
  end
end
