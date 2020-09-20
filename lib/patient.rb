class Patient
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all.push(self)
    end
    
    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def self.all
        @@all
    end

    def appointments 
        Appointment.all.select { |appointments| appointments.patient == self }
    end

    def doctors
        appointments.map { |doctors| doctors.doctor }
    end

end