class Notifications < ActionMailer::Base
  default from: "josh@cda.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.new_user.subject
  #
  def new_user(user)
    @greeting = "Hey, it's Josh from CDA.com!"
    @name = user.name
    @email = user.email
    mail to: @email
  end

=begin
  def new_comment(comment)
    @greeting = "hey!"
    @commenter = comment.user.name

=end

end












