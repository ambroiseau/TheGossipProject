require 'controller'
require 'gossip'

class Router
  def initialize
    @controller =  Controller.new
  end

  def perform
    puts "BIENVENUE DANS THE GOSSIP PROJECT"
    while true
      puts "Tu veux faire quoi BG ?"
      puts "1. Je veux créer un gossip"
      puts "2. Afficher tous les potins"
      puts "3. Supprimer un potin"
      puts "4. Je veux quitter l'app"
      params = gets.chomp.to_i
      case params
      when 1
        puts "Tu as choisi de créer un gossip" 
        @controller.create_gossip
      when 2
        puts "Voici tous les potins"
        @controller.index_gossips
      when 3
        puts "Tu as supprimé un potin!!"
      when 4
        puts "À bientôt !"
        break
      else
        puts "Erreur, merci de ressayer"
      end
    end
  end
end












