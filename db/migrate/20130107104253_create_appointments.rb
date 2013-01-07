class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :title
      t.string :location
      t.text :notes

      t.timestamps
    end

    Appointment.create(
        :title => "Meet with Jon",
        :location => "New York railway park", 
        :notes => "at 7:30 pm")
    Appointment.create( 
        :title => "Meet with Bob and Amy",
        :location => "New York grand central station", 
        :notes => "at 8:30 am")
  end
end