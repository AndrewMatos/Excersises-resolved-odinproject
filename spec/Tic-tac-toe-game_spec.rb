require "./Tic-tac-toe-game"

describe Game do
  describe "#win"do
      
         	
         
	  it "returns true if there is a row of X or O " do

	  	
        class Gme < Game
        	attr_accessor :table
        	def initialize
        		@table=[["X","X","X"],[4,5,6],[7,8,9]]
        	end 

        end
       
       gme=Gme.new

        #allow(gme).to receive(:table) {[["X","X","X"],[4,5,6],[7,8,9]]}
        #game.table=[["X","X","X"],[4,5,6],[7,8,9]]
       # allow(gme).to receive(win)

        expect(gme.win("X")).to eql(true)
	  end
  end
end