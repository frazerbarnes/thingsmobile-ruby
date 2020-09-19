module ThingsMobile

  class Sim

    attr_accessor :client

    def initialize(client, sim = nil)

      self.client = client

      @sim = sim
    end

    def activation_date
      unless @sim['activationDate'] then request_api_data end
      @sim['activationDate']
    end

    def balance
      unless @sim['balance'] then request_api_data end
      @sim['balance']
    end

    def daily_traffic
      unless @sim['dailyTraffic'] then request_api_data end
      @sim['dailyTraffic']
    end

    def expiration_date
      unless @sim['lastConnectionDate'] then request_api_data end
      @sim['lastConnectionDate']
    end

    def iccid
      unless @sim['iccid'] then request_api_data end
      @sim['iccid']
    end

    def last_connection_date
      unless @sim['lastConnectionDate'] then request_api_data end
      @sim['lastConnectionDate']
    end

    def messages
      unless @sim['messages'] then request_api_data end
      @sim['messages']
    end

    def monthly_traffic
      unless @sim['monthlyTraffic'] then request_api_data end
      @sim['monthlyTraffic']
    end

    def msisdn
      unless @sim['msisdn'] then request_api_data end
      @sim['msisdn']
    end

    def name
      unless @sim['name'] then request_api_data end
      @sim['name']
    end

    def plan
      unless @sim['plan'] then request_api_data end
      @sim['plan']
    end

    def status
      unless @sim['status'] then request_api_data end
      @sim['status']
    end

    def tag
      unless @sim['tag'] then request_api_data end
      @sim['tag']
    end

    def total_traffic
      unless @sim['totalTraffic'] then request_api_data end
      @sim['totalTraffic']
    end

    def type
      unless @sim['type'] then request_api_data end
      @sim['type']
    end

    def request_api_data
      #@sim = client.post_request('/simListLite', {})
    end

  end

end


