module ThingsMobile

  class Sims

    attr_accessor :client

    def initialize(client, device=nil)
      self.client = client
      #@iccid = device['iccid']
      #@device = device
    end

    def activate(msisdn, barcode)

      params = {
          msisdn: msisdn,
          iccid: barcode
      }
      response = client.post_request('/blockSim', params)

      data = response.parsed_response
      data["result"]
    end

    def block(msisdn, barcode)

      params = {
          msisdn: msisdn,
          simBarcode: barcode
      }
      response = client.post_request('/activateSim', params)

      data = response.parsed_response
      data["result"]
    end

    def all

      response = client.post_request('/simList', {})

      data = response.parsed_response
      data["result"]["sims"]["sim"]
    end

  end

end

