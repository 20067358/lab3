class Medic < ActiveRecord::Base

  def Medic.showAppointments(medic_id)
    primera_cita = Appointment.where(:medic_id => medic_id).first
    puts "Hora: #{primera_cita.begin_time}"
  end

end
