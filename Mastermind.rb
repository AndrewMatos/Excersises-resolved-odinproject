class Game
	attr_reader :table, :wincolors, :pc, :playtable

	def initialize(player_name)
		@player=Player.new(player_name)
		@pc=Pc.new
		@playtable=Table.new
		if askplayer
		puts"The colors are: blue,red,pink,yellow,black,green,orange,purple"
        @wincolors=playertable
        playcm
		else 
		@wincolors=tableassign  
		playcb
		end
	
	end

	def askplayer
		n = false
		puts "do you want to play as the codemaker or the code breaker write 'cm' or 'cb'\n\r"
		choice =gets.chomp
		if choice=="cm"
		 n = true
		end
	return n
	end

	def playertable
		puts "write the 4 colors separated by space with the combination and order of colors\n\r"
		str =gets.chomp.downcase
		array=str.split(" ")
	    return array
    end

    def pctable 
    	if @playtable.close==["no","no","no","no"]
    	@pc.guess = tableassign
        else
        	
        	arr=[0,1,2,3]-@pc.reds
        	#puts "pc reds== #{@pc.reds}"
        	
        	#puts "arr == #{arr}"

           @playtable.close.each_with_index{|element,index|
            if index>=@pc.reds.length
           	x= arr.sample
           #puts "x == #{x}"
           	y=(arr).sample
           	
	           	if element == "no"
	           	@pc.guess[x]=randomcolor
	             arr-=[x]
	            elsif element== "red"
	            	if @pc.guess[x]==@wincolors[x]
	                   @pc.reds.push(x)
	               	end
	               	arr-=[x]
	            elsif  element== "white"
	               me=@pc.guess[x]
	               @pc.guess[x]=@pc.guess[y]
	               @pc.guess[y]=me
	           	end
	       else
	       next
	       end
           }
         
   	    end
    return @pc.guess
    end

    def randomcolor
      n = nil
      while n == nil do
            if rand(9) ==0
		    	n="blue"
		    elsif  rand(9) ==1
		    	n="red"
		    elsif rand(9)== 2
		    	n="pink"
		    elsif rand(9)== 3
		    	n="yellow"
		    elsif rand(9) == 4
		    	n="black"
		    elsif rand(9)== 5
		    	n="green"
		    elsif rand(9)== 6
		    	n="orange"
		    elsif rand(9)== 7
		    	n="purple"
		    else
		    	n="white"
	        end
	  end
	return n 
    end 

    def tableassign
	    array =[]
	    4.times do
		 array.push(randomcolor)      	
	    end
	return array
	end

	def playcm
		puts "you color code is #{@wincolors} , the pc is going to try to decipher it\n\r"
		i=1
		until pcwin do
		guess(pctable,i)
		puts @playtable.table
		puts"\n\ryour code is #{@wincolors} press enter to continue,\nctrl+c to finish \n\r"
		gets.chomp
		i+=1
			if i== 12
			 break
			end	
	    end 
	    if pcwin
	    	puts "\nYou lost!! enter 'play' to play again else enter anything else"
		    choice=gets.chomp
		    if choice== "play"
            @playtable.close =["no","no","no","no"]
            puts"The colors are: blue,red,pink,yellow,black,green,orange,purple"
            @wincolors=playertable
            i=0
            @playtable.table=[]
            @pc.guess=[]
            @pc.reds=[]
            playcm
		    end
		else 
			puts "\nYou have won!! , enter 'play' to play again else enter anything else\n"
		    choice=gets.chomp
		    if choice== "play"
            @playtable.close =["no","no","no","no"]
            puts"The colors are: blue,red,pink,yellow,black,green,orange,purple"
            @wincolors=playertable
            i=0
            @playtable.table=[]
            @pc.guess=[]
            @pc.reds=[]
            playcm
		    end

		end

	end

	def playcb
		puts "try to guess the combination of 4 colors of the pc (you have 12 turns)\nThe other array indicates, red: you have guessed a color in right position, white : guessed a color\n if you want to quit pres ctrl+c\n\r"
		i=1
		until win do
	    puts"\n\rThe colors are: blue,red,pink,yellow,black,green,orange,purple"
		guess(playertable,i)
		puts "\n"
		puts @playtable.table
		i+=1
			if i== 12
			 break
			end	
	    end 
	    if win
		    puts "\nYou have won!! , enter 'play' to play again else enter anything else\n"
		    choice=gets.chomp
		    if choice== "play"
            @playtable.close =["no","no","no","no"]
            @wincolors=tableassign
            i=0
            @playtable.table=[]
            playcb
		    end
		else 
			puts "\nYou lost!! enter 'play' to play again else enter anything else"
		    choice=gets.chomp
		    if choice== "play"
            @playtable.close =["no","no","no","no"]
            @wincolors=tableassign
            i=0
            @playtable.table=[]
            playcb
		    end

		end

	end

	def win
		n = false
		if @playtable.close ==["red","red","red","red"]
		n = true
		end
	    return n
	end

	def pcwin
		n = false
		if @playtable.close ==["red","red","red","red"]
		n = true
		end
	    return n
	end

	def guess(arr,n)
		arr2=@wincolors
		red=0
		white=0
		arr.each_with_index{|element,index|
          if element==@wincolors[index]
          	red+=1
          elsif arr2.include?(element)
          	white+=1
            arr2-=[element]
          end
		}

		@playtable.close =["no","no","no","no"]


		if red !=0
			i =0
			red.times do
            @playtable.close[i]="red"
            i+=1
			end
		end

		if  white !=0
			m =  @playtable.close.index("red")
			if m != nil
				i = m+1
		    else 
		       i = 0
		    end
			white.times do
		      @playtable.close[i]="white"
		      i+=1
     	    end			
		end

	    @playtable.table.push("Turn #{n} #{arr} guessed#{@playtable.close}")
	end


    class Player
    	def initialize(name)
    	@name=name
    	end
    end

    class Pc
    	attr_accessor :guess, :reds
    	def initialize
         @guess=[]
         @reds=[]
    	end
    end

    class Table
    	attr_accessor :table, :close

    	def initialize 
    	@table=[]	
    	@close=["no","no","no","no"]
    	end
    end

end