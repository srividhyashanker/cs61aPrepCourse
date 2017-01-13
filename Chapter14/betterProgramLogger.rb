
$amountToIndent = 0
def log descriptionOfBlock, &block
	puts ' '*$amountToIndent + 'Beginning "' + descriptionOfBlock + '"...'
	$amountToIndent = $amountToIndent + 2
	doBlock = block.call
	$amountToIndent = $amountToIndent - 2
	puts ' '*$amountToIndent + '..."' + descriptionOfBlock + '" finished, returning: ' + doBlock.to_s
end

log 'outer block' do
	log 'some little block' do
		log 'teeny-tiny block' do
			'lots of love'
		end
		2 + 2 +1
	end
	log 'yet another block' do
		'I like Thai food!'
	end
	5 == 5
end

