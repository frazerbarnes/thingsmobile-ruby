module ThingsMobile

  class Base

    include HTTParty

    base_uri 'https://www.thingsmobile.com/services/business-api'
    format :xml

    def initialize(user, token)
      @user = user
      @token = token
    end

    def sims
      @sims = ThingsMobile::Sims.new(self)
    end

    def post_request(url, params)

      params.merge({username: @user, token: @token})

      options = {
          headers: {'Content-Type' => 'application/x-www-form-urlencoded'},
          body: {username: @user, token: @token}.merge(params)
      }

      self.class.post(url, options)

    end

  end

end

