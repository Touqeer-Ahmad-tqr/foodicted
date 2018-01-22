class Food

  include HTTParty
  default_options.update(verify: true) # Turn off SSL verification
  base_uri 'http://food2fork.com/api'
  default_params key: APP_CONFIG[:food2fork_api_key]
  format :json

  def self.for term
    begin
    get("/search", query: { q: term})["recipes"]
    rescue Exception => e
      p '*'*100
      p e.message
      return "error"
    end
  end

end
