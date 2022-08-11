class DestroyAgendaMailer < ApplicationMailer
  def destroy_agenda_mailer(agenda,user)
    @email = user.email
    @agenda = agenda
    mail to: @email, subject: 'チーム内のアジェンダが削除されました'
  end
end
