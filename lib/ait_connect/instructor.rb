module ActiveInTime
  class Instructor
    attr_reader :json

    def initialize(active_in_time, json)
      @active_in_time, @json = active_in_time, json
    end

    def id
      @json["id"]
    end

    def first_name
      @json["first_name"]
    end
    
    def last_name
      @json["last_name"]
    end
    
    def display_name
      @json["display_name"]
    end

  end
end
