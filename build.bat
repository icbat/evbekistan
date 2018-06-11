@echo " -- Starting Building Client"
@echo "Deleting old archive"
rm client/client.zip
@echo "Copying mods into client"
robocopy mods client/mods
@echo "Copying forge into client"
robocopy "bin/" client/bin
cd client
@echo "Zipping it"
7z a -tzip client.zip bin mods
@echo "Cleaning up client"
rm -rf mods
rm -rf bin
cd ..
robocopy "bin/forge-1.12.2-14.23.4.2707-universal.jar" client/bin/modpack.jar
@echo " -- Finished Building Client"
