#require 'HTTParty'
#require 'pp'

class Food
 include HTTParty
 ENV["FOOD2FORK_KEY"] = 'fc1ef6e2a978110dd05031e51f4aa01f'
 #default_options.update(verify: false) # Turn off SSL verification
 base_uri 'http://food2fork.com/api'
 default_params key: ENV["FOOD2FORK_KEY"]
 format :json
 
 def self.for term
 	get("/search", query: { q: term})["recipes"]
 end
end


#p Food.for('noodle')