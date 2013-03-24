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
  def accept_request(uu)
    @ss = uu
    @reserf = Form.find_by_email(@ss.email,@ss.date_to_reserve)
    @greeting = " rommname #{@reserf.roomname} and date to reserved is #{@reserf.date_to_reserve} "
  mail to: @ss.email, subject: "congraturation cun #{@reserf.name} you can reserved room success"
end
end
