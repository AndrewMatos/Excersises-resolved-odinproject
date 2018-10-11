class Game
	attr_accessor :table, :player1, :player2

	def initialize
		@table=[[],[],[],[],[],[],[]]
		@player1="\u25CB".encode('utf-8')
		#puts @player1
		@player2="\u25CF".encode('utf-8')
		#puts @player2
	end

	def play
		until win(@player1)||win(@player2) do
			puts "\n\r"
			put_table
			puts " player: #{@player1} plays , choose in which colummn to put your coin, press ctrl+c to end"
			choice = gets.chomp.to_i
			@table[choice].push(@player1)
			puts "\n\r"
			put_table
			if win(@player1)
			break
			end
			puts " player: #{@player2} plays , choose in which colummn to put your coin, press ctrl+c to end"
			puts "\n\r"
			choice = gets.chomp.to_i
			@table[choice].push(@player2)
			put_table
		end 
		if win(@player1)
		  puts "player: #{@player1} won, enter 'restart' to play again, enter any other thing to end"
		  choice=gets.chomp
          if choice=="restart"
          @table=[[],[],[],[],[],[],[]]
          play
          end
		elsif win(@player2)
		  puts "player: #{@player2} won, enter 'restart' to play again, enter any other thing to end"
		  choice=gets.chomp
          if choice=="restart"
          @table=[[],[],[],[],[],[],[]]
          play
          end
		end

	end

	

	def win(player)
	n = false 
    @table.each_with_index do |element,index|
    	element.each_with_index do |element2,index2|
         if element2==player 
         	if index<4 && element2==@table[index+1][index2] && element2==@table[index+2][index2] && element2==@table[index+3][index2]
         		n = true
         		break
         	elsif  index2<3 && element2==@table[index][index2+1] && element2==@table[index][index2+2] && element2==@table[index][index2+3]
         	    n = true
         		break
         	elsif index<4 && index2<3 &&  element2==@table[index+1][index2+1] && element2==@table[index+2][index2+2] && element2==@table[index+3][index2+3]
         		 n = true
         		break
         	elsif index<4 && index2>2 && element2==@table[index+1][index2-1] && element2==@table[index+2][index2-2] && element2==@table[index+3][index2-3]
         		 n = true
         		break
         	end
         end
    	end
	    if n == true
	    break
	    end
    end

	return n
	end

	def row_insert(row,element)
	  if element != nil
	  row+="|#{element} |"	
	  else
      row+="|0 |"
	  end
    return row
    end

    def put_table
    	row1=""
    	row2=""
    	row3=""
    	row4=""
    	row5=""
    	row6=""
    	row0="|0 ||1 ||2 ||3 ||4 ||5 ||6 |"
    	
    	@table.each_with_index do |element,index|
    		i = 0
    	    while i<=5 do

    			
    			if i==0	
	    		row1 = row_insert(row1,element[i])
	    	    elsif i==1
	    	    row2 = row_insert(row2,element[i])
	    	    elsif i==2
	    	    row3 = row_insert(row3,element[i])
	    	    elsif i==3
	    	    row4 = row_insert(row4,element[i])
	    	    elsif i==4
	    	    row5 = row_insert(row5,element[i])
	    	    elsif i==5
	    	    row6 = row_insert(row6,element[i])		
    		    end
    		    
            i+=1
    	    end
    	end
    puts row6
    puts row5
    puts row4
    puts row3
    puts row2
    puts row1
    puts row0
    return ""
    end

end
