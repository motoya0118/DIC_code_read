class MovePermissionMailer < ApplicationMailer
  def move_permission_mailer(team,move_user)
    @email = move_user.email
    @team = team
    mail to: @email, subject: 'チームリーダーがあなたに変更されました'
  end
end
