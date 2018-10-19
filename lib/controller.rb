require 'gossip'
require 'view'


class Controller

  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params[:author], params[:content])
    gossip.save_in_csv 
  end

  def index_gossips
    vladimir_potin = Gossip.list
    @view.potins(vladimir_potin)
  end


  def delete
    
  end

end
