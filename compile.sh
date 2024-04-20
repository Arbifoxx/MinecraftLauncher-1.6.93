#Check to see if AutoOL was cloned
if [ ! -f ./AutoOL/pom.xml ]; then
	echo "AutoOL doesn't exist! Cloning..."
	sleep 2
	echo
	rm -rf AutoOL
	git clone https://github.com/olauncher/AutoOL
	cd AutoOL
	git checkout e605537cc067b4873181d9590f70394a5a32e253
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
