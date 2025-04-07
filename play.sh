cd ~/Music
playlist=$(find -not -iwholename "*.git*" -not -iwholename "."  -type d |fzf)
loops=$1

for i in $(seq 1 1 $loops); do	
	mpg123 $playlist/*.mp3;
done
