class BookingMailer < ActionMailer::Base
  default from: "Pair with ember-a11y <ember.accessibility@gmail.com>"

  def teacher_notification(booking)
    @booking = booking
    @session = @booking.session
    @person = @session.person

    mail to: @person.email,
         subject: "New booking on Pair"
  end

  def student_notification(booking)
    @booking = booking
    @session = @booking.session
    @person = @session.person

    mail to: @booking.email,
         subject: "Your booking on Pair"
  end
end
