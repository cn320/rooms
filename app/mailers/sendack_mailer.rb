class SendackMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.sendack_mailer.accept_request.subject
  #
  # def accept_request
  #   @greeting = "Hi"

  #   mail to: "to@example.org"
  # end
  def accept_request(email)
  @greeting = "Hi"

  mail to: email, subject: "RailsCasts Weekly"
end
end
