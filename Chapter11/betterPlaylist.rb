def music_shuffle songs
	x = 0
	index = 0
	playlist, songName = [ ], [ ]
	number_songs = songs.length
	while x < number_songs
		index = rand(number_songs)
		songName = songs[index].split'/'
		if songs[index] != ''
			playlist.push songs[index]
			songs[track_number] = ''
			x = x + 1
		end
	end
	songs
end


allOggs = music_shuffle(Dir['**/*.ogg'])
File.open 'playlist.m3u', 'w' do |f| 
	allOggs.each do |x|
		f.write x + "\n"
	end
end