OUTPUT="Open-LaTeX-Studio.AppImage"


all:
	echo "Building: $(OUTPUT)"
	#wget --output-document=$(DESTINATION) --continue $(SOURCE)
	
	#dpkg -x $(DESTINATION) build
	#rm -rf AppDir/opt
	
	#mkdir --parents AppDir/application
	#mv build/usr/bin/* AppDir/application

	chmod +x AppDir/AppRun

	export ARCH=x86_64 && bin/appimagetool.AppImage AppDir $(OUTPUT)
	chmod +x $(OUTPUT)

	#rm -f $(DESTINATION)
	#rm -rf AppDir/application
	#rm -rf build
