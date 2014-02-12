class CommentMailer < ActionMailer::Base
  default from: "comment@aventurapleinair.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.comment_mailer.new_comment_notification.subject
  #
  def new_comment_notification(url)
    @url = url
    mail to: "max.pare@hotmail.com", subject: 'Nouveau commentaire'
  end
end
