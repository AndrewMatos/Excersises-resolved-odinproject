class Game

	attr_reader :player, :table			

	def initialize(player_name)
	   if rand(2)==0
          n = "O"
            else
          n = "X"
       end 
	  @player=Player.new(player_name,n)
	  @pc=Pc.new (n)
	  @table=[[1,2,3],[4,5,6],[7,8,9]]
	  start

	end

	private

	def start
		 puts "you are #{@player.XorO}"
	     puts "X starts , X player choose where to put a X"
	     @table.each{|element|
		  	puts "|#{element[0]},#{element[1]},#{element[2]}|"
		  }		
	     if @player.XorO =="X"
	      playplayer
	     else 
	      playpc
	     end 
	     until win(@player.XorO) || win(@pc.XorO) do
	      play	
	     end
	     @table.each{|element|
		  	puts "|#{element[0]},#{element[1]},#{element[2]}|"
		  }	
		  winner
	return nil
	end

	def winner
		 if win(@player.XorO)
		  @player.wins
		  puts "Player #{@player.name} wins round 1 , now you have #{@player.points} points, press
		  enter to continue"
		  gets
		 elsif win(@pc.XorO)
		   @pc.wins
		  puts "Pc  wins round 1 , now PC has #{@pc.points} points press
		  enter to continue"
		  gets
		 end

		 if @player.points == 3
		 	puts "You Won , enter 'Y' if you want to play again or enter any other thing to quit"
		 	choice= gets.chomp
		 	if choice=="Y"
		 	@table=[[1,2,3],[4,5,6],[7,8,9]]
            @player.restart
            @pc.restart
            start
            else
            	puts "Bye nwn"
		 	end
		 elsif @pc.points == 3
		 	puts "You Lost, enter 'Y' if you want to play again or enter any other thing to quit"
		 	choice= gets.chomp
		 	if choice=="Y"
		 	@table=[[1,2,3],[4,5,6],[7,8,9]]
            @player.restart
            @pc.restart
            start
            else
            	puts "Bye nwn"
		 	end
		 else 
		  @table=[[1,2,3],[4,5,6],[7,8,9]]
		  start
		 end

	end

	def win (player)
	n = false
      if @table[0][0]=="#{player}"
      	if @table[0][0]==@table[0][1] && @table[0][0]==@table[0][2]
      	n = true
        elsif  @table[0][0]==@table[1][0] && @table[0][0]==@table[2][0]
        n = true
        elsif  @table[0][0]==@table[1][1] && @table[0][0]==@table[2][2]
        n = true
      	end
      elsif @table[2][2]=="#{player}"
      	if  @table[2][2]==@table[2][1] && @table[2][2]==@table[2][0]
      	n = true
        elsif @table[2][2]==@table[1][2] && @table[2][2]==@table[0][2]
        n = true
        elsif @table[2][2]==@table[1][1] && @table[2][2]==@table[0][0]			
      	end
      elsif @table[2][0]=="#{player}"
      	if @table[2][0]==@table[1][1]&& @table[2][0]==@table[0][2]
      	 n = true	
      	end	
      end
    return n
	end

	def play
	     @table.each{|element|
		  	puts "|#{element[0]},#{element[1]},#{element[2]}|"
		  }		
	     if @player.XorO =="O"
	      puts " you are #{@player.XorO}, Choose where to put #{@player.XorO} "
	      
	      playplayer

	      @table.each{|element|
		  	puts "|#{element[0]},#{element[1]},#{element[2]}|"
		  }	
	      playpc
	     else 
	      playpc

	      table.each{|element|
		  	puts "|#{element[0]},#{element[1]},#{element[2]}|"
		  }	

		  puts " you are #{@player.XorO}, Choose where to put #{@player.XorO}"
	      
	      playplayer

	     end
	return nil
	end

	


	def playplayer
		choice = gets.chomp.to_i
		until @table[0].include?(choice)||@table[1].include?(choice)||@table[2].include?(choice) do
		puts "that position doesn't exist or is already in use, write another position if you want to quit press ctrl+c"
		choice = gets.chomp.to_i
		end
		@table= @table.map{|element| 
			element = element.map{|element2|
				if element2==choice
				 element2 =@player.XorO	
				end
				element2
			}
		}	
	end

	def playpc
		choice = rand(1..9)
		until @table[0].include?(choice)||@table[1].include?(choice)||@table[2].include?(choice) do
		choice = rand(1..9)
		end
		@table= @table.map{|element| 
			element = element.map{|element2|
				if element2==choice
				 element2 = @pc.XorO
				end
				element2
			}
		}
		puts "pc puts #{@pc.XorO} in position #{choice}"	
	end

	def table=(value)
		@table=value
	end

	public

	class Player
		attr_reader :XorO, :name, :points

		def initialize(name,xoro)
		 @name=name
		 @points=0
		 @XorO=xoro
		end

		def wins
		  @points= @points + 1
		end

		def restart
			@points=0
		end

		protected

		def points=(value)
		@points=value
	    end

	end

	class Pc  
		attr_reader :XorO, :name, :points

		def initialize (xoro)
			 @name="pc"
			 @points=0
			 if  xoro=="X"
			 @XorO="O"
			 else
			 @XorO="X"	
			 end
			 
		end

		def wins
			@points= @points + 1
		end

		def restart
			@points=0
		end

		protected

		def points=(value)
		@points=value
	    end

	end

end