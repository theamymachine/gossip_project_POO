require_relative './gossip.rb'
require_relative './view.rb'
#require 'pry'

class Controller

  def create_gossip()
    params = View.new.create_gossip
    gossip = Gossip.new(params.keys[0], params.values[0])
    gossip.save
  end

  def index_gossips()
    gossips = Gossip.all
    params = View.index_gossips(gossips)
  end
end 

#binding.pry
#puts "file stop"