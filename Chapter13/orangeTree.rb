class OrangeTree

	def initialize
		@height = 0
		@treeAlive = true
		@orange_count = 0
		@delicious = true
	end
	def height
		@height
	end
	def count_the_oranges
		@orange_count
	end
	def one_year_passes
		if @treeAlive == true
			@height = @height + 1
			if @height > 5
				@treeAlive = false
				puts 'THE TREE DIED'
			elsif @height > 2
				@orange_count = 5*@height
				puts "This year your tree grew to height of #{@height}"
				puts "This year the tree produced #{@orange_count} oranges."
			else
				puts 'Too young to produce fruit'
			end
		else
			puts 'Tree is dead'
		end
	end
	def pick_an_orange
		if @alive
			if @orange_count > 0
       			@orange_count = @orange_count - 1
				puts 'Delicious Orange' 
			else
				puts 'No oranges.'
			end
		else
			puts 'Tree is dead' 
		end
	end
end
tree = OrangeTree.new


puts(tree.count_the_oranges)
puts(tree.height)
puts(tree.one_year_passes)
puts(tree.pick_an_orange)
puts('----A YEAR LATER---')
puts(tree.count_the_oranges)
puts(tree.height)
puts(tree.one_year_passes)
puts(tree.pick_an_orange)
puts('----A YEAR LATER---')
puts(tree.count_the_oranges)
puts(tree.height)
puts(tree.one_year_passes)
puts(tree.pick_an_orange)
puts('----A YEAR LATER---')
puts(tree.count_the_oranges)
puts(tree.height)
puts(tree.one_year_passes)
puts(tree.pick_an_orange)
puts('----A YEAR LATER---')
puts(tree.count_the_oranges)
puts(tree.height)
puts(tree.one_year_passes)
puts(tree.pick_an_orange)
puts('----A YEAR LATER---')
puts(tree.count_the_oranges)
puts(tree.height)
puts(tree.one_year_passes)
puts(tree.pick_an_orange)
puts('----A YEAR LATER---')
