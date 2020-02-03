require 'pry'
require 'csv'
class Gossip 
  attr_accessor :author, :content

  def initialize(author, content)
    @content = content 
    @author = author 
    @gossip = [author, content]
  end 
  
  def save ()
     CSV.open("./db/gossip.csv", "a") do |csv|
      csv << @gossip
    end 
  end

  def self.all
    all_gossip = []
      CSV.open("./db/gossip.csv", "r") do |csv|
        csv.each{|row| return row }
        gossip_provisoire = Gossip.new(row[0], row[1])
        all_gossip << gossip_provisoire
      end 
    return all_gossip
  end

end 

binding.pry
puts "file end"