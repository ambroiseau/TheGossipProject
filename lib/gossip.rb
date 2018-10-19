require 'csv'  


class Gossip

  attr_reader :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save_in_csv
    CSV.open("db/gossip.csv","ab") do |csv_object|
    csv_object << [@author,@content]
    end
  end

  def self.list
    my_gossips = []
    CSV.foreach("db/gossip.csv") do |ligne|
    provisoire = ligne
    my_gossips << provisoire
    end
  return my_gossips
  end
end


#Gossip.new("content","pofzopei").save_in_csv


