class Doctor 
    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    def appointments
        Appointment.all.find_all { |appointments| appointments.doctor == self } 
    end

    def self.all
        @@all
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def patients 
        appointments.map { |s| s.patient }
    end

end

