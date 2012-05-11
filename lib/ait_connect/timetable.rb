module ActiveInTime
  class Timetable
    attr_reader :json

    def initialize(active_in_time, json)
      @active_in_time, @json = active_in_time, json
    end
    
    def fetch
      @json = @active_in_time.get("timetables/#{id}")["timetable"]
      self
    end

    def id
      @json["id"]
    end

    def name
      @json["name"]
    end

    def facilities
      return [] if !@json["facilities"] || @json["facilities"].empty?
      
      facilities = []
      json['facilities'].each do |facility|
        facilities << ActiveInTime::Facility.new(@active_in_time, facility)
      end
      facilities
    end

    def timetable_sessions
      return [] if !@json["timetable_sessions"] || @json["timetable_sessions"].empty?
      
      timetable_sessions = []
      json['timetable_sessions'].each do |facility|
        timetable_sessions << ActiveInTime::TimetableSession.new(@active_in_time, facility)
      end
      timetable_sessions
    end
    
    def timetable_entries(options = {})
      @active_in_time.timetable_entries.find(self.id,options)
    end
    
  end
end
