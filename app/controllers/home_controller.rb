class HomeController < ApplicationController
  def view
  end

  def data
    @appointmants = Appointment.all()
  end

  def dbaction
    #called for all db actions
    title = params["c0"]
    location = params["c1"]
    notes = params["c2"]

    @mode = params["!nativeeditor_status"]

    @id = params["gr_id"]
    case @mode
      when "inserted"
        appointment = Appointment.new
        appointment.title = title
        appointment.location = location
        appointment.notes = notes
        appointment.save!

        @tid = appointment.id
      when "deleted"
        appointment = Appointment.find(@id)
        appointment.destroy

        @tid = @id
      when "updated"
        appointment = Appointment.find(@id)
        appointment.title = title
        appointment.location = location
        appointment.notes = notes
        appointment.save!

        @tid = @id
    end
  end
end