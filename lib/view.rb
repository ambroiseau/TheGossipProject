
class View

  def create_gossip
    puts "Bonsoir cher ami, comment te prénommes-tu?"
    print ">"
    auteur = gets.chomp
    puts "Tell me a secret"
    print ">"
    gossip = gets.chomp
    return params = { content: @gossip, author: @auteur}
  end

  def potins (gossip)
    puts gossip
  end

end

