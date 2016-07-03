class ZombiesController < ApplicationController

  def index 
	#@Z = Zombie.find(2)
	#@Z.name = "Bob"
	#@Z.graveyard = "Chapel Hill Cemetery"	
	#@Z.save 
  end

  def find
    	@Z = findz_as_id(1)
  end

  def create_table
     	if params.empty?

     	else
     	   create_row(params[:name], params[:graveyard])
     	end
  end

  protected
  def create_row(name, gy)
    
      	@Z = Zombie.new
     	@Z.name = @name
     	@Z.graveyard = @gy
     	@Z.save

	    
  end

  def findz_as_id(id)
    	@Z = Zombie.find(id)
  end
end






























