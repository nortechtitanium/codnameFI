class ZombiesController < ApplicationController

  def index 
 
  end

  def find
    	@Z = read(1)
  end
  
  def findlast
	@Z = Zombie.last
  end

  def query
        @Z = Zombie.order(:name)
  end

  def update
        @Z = Zombie.find(3)
        @Z.graveyard = "Benny Hills Memorial"
        @Z.save
  end

 def destroy
        delete(3)
        @Z = Zombie.order(:name)
        
 end 

  def createzombie

	create("Peti", "EPIC office")
	@Z = Zombie.last.id

  end

  def create_table
     	if params.empty?

     	else
     	   create_row(params[:name], params[:graveyard])
     	end
  end





  protected

  def create(nm, gy)    
      	@Z = Zombie.new(name: nm, graveyard:gy)
     	@Z.save
  end

  def read(id)
    	@Z = Zombie.find(id)
  end

  def delete(id)
    	@Z = Zombie.destroy(id)
  end
 




end






























