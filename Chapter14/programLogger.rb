def log descriptionOfBlock, &block
	puts 'Beginning "' + descriptionOfBlock + '"...'
	doBlock = block.call
	puts '..."' + descriptionOfBlock + '" finished, returning: ' + doBlock.to_s
end

log 'outer block' do
	log 'some little block' do
		2 + 2 +1
	end
	log 'yet another block' do
		puts 'I like Thai food!'
	end
	5 == 3
end

