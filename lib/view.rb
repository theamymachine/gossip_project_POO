require 'pry'

class View 
  attr_accessor :gossip

  def initialize (gossip)
    @gossip = Gossip.new
  end 

  def create_gossip()
    puts "Qui est l'auteur de ton gossip ?" 
      author = gets.chomp 
    puts "Et qu'a-t-il dit ?"
      content = gets.chomp #réopnse utilisateur
    return params = {"#{author}" => "#{content}"} 
  end 

  def index_gossips(gossip)
    gossips = @gossip.all
    puts @gossip.all
    gossips.each do |gossip|
      puts gossips 
    end 
  end

end 

#binding.pry 
#puts "file ends here"