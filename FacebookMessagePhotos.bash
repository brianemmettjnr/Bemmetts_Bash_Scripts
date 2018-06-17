mkdir $1
for f in */; do
	if [ -d $f/photos ]; then
		cp -R $f/photos/. $1/$f
		for g in $(find $1/$f -name "*.gif"); do
			rm $g;
		done
	fi
done
for f in */; do
	cp -R $f/photos/. $1/1allPhotos
done
