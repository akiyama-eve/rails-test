class EmailSenderController < ApplicationController
  def index
    # UserMailer.with(user: current_user).welcome_email.deliver_later
    TestMailer.with(user: current_user).test_mailer.deliver_later
    render json: ["bobo"]
  end
end
