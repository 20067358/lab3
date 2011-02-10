class Appointment < ActiveRecord::Base
  
  def Appointment.assignAppointment(medic_id, patient_id, begin_time, end_time)
    crear_cita = Appointment.new :medic_id => medic_id, :patient_id =>patient_id, :begin_time => begin_time, :end_time => end_time
    if crear_cita.save
      puts "True"
    else
      puts "false"
    end
  end

  def Appointment.modifyAppointment(appointment_id, medic_id, begin_time, end_time)
    if Appointment.update(appointment_id, { :medic_id => medic_id, :begin_time => begin_time, :end_time => end_time})
      puts "True"
    else
      puts "false"
    end
  end

  def Appointment.deletAppointment(appointment_id)
    borrarCita = Appointment.find(appointment_id)
    if borrarCita.destroy
      puts "True"
    else
      puts "false"
    end  
  end
  
  validates_uniqueness_of :patient_id, :begin_time, :end_time
  validates_uniqueness_of :medic_id, :begin_time, :end_time

  
  
end
