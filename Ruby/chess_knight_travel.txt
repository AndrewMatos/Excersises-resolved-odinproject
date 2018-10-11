require "./class_Graph"

class Knight
	attr_accessor :pos, :table

	def initialize(pos=[0,0])
		@pos=pos 

        @table=ntable
	end


    def posible_moves(vertice)

    start= vertice.name

    if start[0]+1 <=7 &&  start[1]+2 <=7
        n = [start[0]+1,start[1]+2]
        @table.add_edge(start, n, 1 )
    end

    if start[0]+2 <=7 &&  start[1]+1 <=7
        n = [start[0]+2,start[1]+1]
        @table.add_edge(start, n, 1 )
    end

    if start[0]-1>=0 && start[1]+2 <=7
        n = [start[0]-1,start[1]+2]
        @table.add_edge(start, n, 1 )
    end
     
    if start[0]-2>=0 && start[1]+1 <=7
        n = [start[0]-2,start[1]+1]
        @table.add_edge(start, n, 1 )
    end

    if start[0]-2>=0 && start[1]-1 >=0
        n = [start[0]-2,start[1]-1]
        @table.add_edge(start, n, 1 )
    end

    if start[0]-1>=0 && start[1]-2 >=0
        n = [start[0]-1,start[1]-2]
        @table.add_edge(start, n, 1 )
    end

    if start[0]+1<=7 && start[1]-2 >=0
        n = [start[0]+1,start[1]-2]
        @table.add_edge(start, n, 1 )
    end

    if start[0]+2<=7 && start[1]-1 >=0
        n = [start[0]+2,start[1]-1]
        @table.add_edge(start, n, 1 )
    end

    return vertice

    end

    def ntable
     n =Graph.new
     i = 0
     while i<=7
     j = 0
        while j<=7
            n.add_vertex([i,j])
            j+=1
        end
     i+=1
     end

     m = []


     n.vertices.each do |element|
     m.push(element.name)
     end


  
    return n
    end

    def connection 
      
     m = @table.vertices.map do |element|
      element= posible_moves(element)
     end
    
     
    
    end

    def knight_moves(start, move)
     fin = false
     n =[]
     ni =[]
     n.push(start)
     i=0
     until fin

             m = @table.find_vertice(start)

            if @table.vertices[m].neighbours.include?(move) || n[0][0]== move[0] && n[0][1]== move[1]
                ni.push(n.shift) 
                ni.push(move)
                fin = true
            break

            else

                 @table.vertices[m].neighbours.each_with_index do |element,index| 
                    if element && !ni.include?(element)
                      n.push(element)
                    end
                 end

                 ni.push(n.shift) 
                 start=n[0]   
                 
             end
                       
         
     end
    

    ni.reverse!
    path=[]
    path.push(ni[0])
    ni.each do |element|
      if @table.vertices[@table.find_vertice(path[-1])].neighbours.include?(element)
        path.push(element)
      end
    end
    path.reverse!
    puts "you can go there in #{path.length} steps:"
    p path
     
    end
     

end


k= Knight.new
#n = k.posible_moves
#n=k.knight_moves([4,3],[5,6])
#n=k.table
#m = []
#n.vertices.each do |element|
#    m.push(element.name)
#end

k.connection

k.knight_moves([3,3], [4,3])

#m= k.table.find_vertice([3,3])
#p m
#p k.table.vertices[m]



