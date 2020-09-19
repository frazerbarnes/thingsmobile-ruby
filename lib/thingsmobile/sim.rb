module ThingsMobile

  class Sim

    attr_accessor :client

    def initialize(client, sim = nil)

      self.client = client

      @sim = sim
    end

    def activation_date
      request_api_data unless @sim['activationDate']
      DateTime.strptime(@sim['activationDate'], '%Y-%m-%d %H:%M:%S')
    end

    def balance
      request_api_data unless @sim['balance']
      @sim['balance']
    end

    def daily_traffic
      request_api_data unless @sim['dailyTraffic']
      @sim['dailyTraffic']
    end

    def expiration_date
      request_api_data unless @sim['lastConnectionDate']
      DateTime.strptime(@sim['lastConnectionDate'], '%Y-%m-%d %H:%M:%S')
    end

    def iccid
      request_api_data unless @sim['iccid']
      @sim['iccid']
    end

    def last_connection_date
      request_api_data unless @sim['lastConnectionDate']
      DateTime.strptime(@sim['lastConnectionDate'], '%Y-%m-%d %H:%M:%S')
    end

    def messages
      request_api_data unless @sim['messages']
      @sim['messages']
    end

    def monthly_traffic
      request_api_data unless @sim['monthlyTraffic']
      @sim['monthlyTraffic']
    end

    def msisdn
      request_api_data unless @sim['msisdn']
      @sim['msisdn']
    end

    def name
      request_api_data unless @sim['name']
      @sim['name']
    end

    def plan
      request_api_data unless @sim['plan']
      @sim['plan']
    end

    def status
      request_api_data unless @sim['status']
      @sim['status']
    end

    def tag
      request_api_data unless @sim['tag']
      @sim['tag']
    end

    def total_traffic
      request_api_data unless @sim['totalTraffic']
      @sim['totalTraffic']
    end

    def type
      request_api_data unless @sim['type']
      @sim['type']
    end

    def request_api_data
      #@sim = client.post_request('/simListLite', {})
    end

  end

end


