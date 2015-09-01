class NotificationMailer < ActionMailer::Base
  default from: "no-reply@chowscoutapp.com"

  def comment_added
    mail(to: "timinki@gmail.com", subject: "A comment has been added to your place")
  end

end
