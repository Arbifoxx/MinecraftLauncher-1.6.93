#Check to see if AutoOL was cloned
if [ ! -f ./AutoOL/pom.xml ]; then
	echo "AutoOL doesn't exist! Cloning..."
	sleep 2
	echo
	rm -rf AutoOL
	git clone https://github.com/waterdragon78/AutoOL
	cd AutoOL
	git checkout 94926ba4f5cab31053465d5d9dee320264f97cfd
	cd ..
fi
echo
echo "Done! Proceeding with compilation..."
sleep 2
echo
./decompile.sh
./init.sh
./applyPatches.sh
mvn clean package
echo
echo "Successfully compiled! Generating redist jar..."
sleep 2
echo
./genredist.sh
