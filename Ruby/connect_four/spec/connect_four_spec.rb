require "./connect_four"

describe Game do
	before(:all) do
	@gme = Game.new
	end

	it "has a instace variable table with an arrays of arrays " do

		expect(@gme.table).to eql([[],[],[],[],[],[],[]])
	end

	describe "#win" do 
		it "returns true when there are a row of one of the players" do
			@gme.table=[[@gme.player1],[@gme.player1],[@gme.player1],[@gme.player1],[@gme.player2],[@gme.player2],[@gme.player2]]
			expect(@gme.win(@gme.player1)).to eql(true)
		end

		it "returns true when there are is a vertical row of one of the players" do
			@gme.table=[[@gme.player1,@gme.player1,@gme.player1,@gme.player1],[@gme.player2],[@gme.player1],[@gme.player2],[@gme.player1],[@gme.player2],[@gme.player2]]
			expect(@gme.win(@gme.player1)).to eql(true)
		end

		it "returns true when there is  diagonal row of one of the players" do
			@gme.table=[[@gme.player1],[@gme.player2,@gme.player1],[@gme.player2,@gme.player2,@gme.player1],[@gme.player2,@gme.player2,@gme.player2,@gme.player1],[@gme.player2],[@gme.player2],[@gme.player2]]
			expect(@gme.win(@gme.player1)).to eql(true)
		end


		it "retuns false when there are no row of the player"do
		    @gme.table=[[@gme.player1],[@gme.player1],[@gme.player1],[@gme.player1],[@gme.player2],[@gme.player2],[@gme.player2]]
			expect(@gme.win(@gme.player2)).to eql(false)
	    end
    end

=begin

    describe "#put_table" do
    	it "puts the play table on display" do
        @gme.table=[[@gme.player1,@gme.player1,@gme.player1,],[@gme.player1],[],[@gme.player1],[@gme.player2],[@gme.player2],[@gme.player2]]
    	expect(@gme.put_table.class).to eql(String)
        end
    end

=end 

    describe "#play" do
    	it "plays the game until someone wins" do
    	@gme.table= [[],[],[],[],[],[],[]]
    	@gme.play
        end

    end

end