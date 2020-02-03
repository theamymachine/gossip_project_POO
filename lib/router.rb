require_relative './controller.rb'

class Router 
  def initialize
    @controller = Controller.new
  end

  def perform 
    puts "Welcome to the Gossip Project"
    
    while true 
      #shows menu
      puts "Tu veux faire quoi ? "
      puts "1. Create a gossip"
      puts "2. I want all the goss"
      puts "4. I want to leave the app"

      params = gets.chomp.to_i #expecting user choice
      case params 
      when 1 
        puts "Tu as choisi de créer un gossip"
        @controller.create_gossip
      
      when 2
        puts "You chose to see all the goss"
        @controller.index_gossips
        
      when 4 
        puts "see ya !"
        break 

      else 
        puts "This choice doesn't exist, please choose between 1 or 4 !"

      end 
    end 
   end 
  end
