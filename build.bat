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
@echo " -- Finished Building Client"



@echo " -- Starting Building Server"
@echo "Deleting old archive"
rm server/server.zip
@echo "Copying mods into server"
robocopy mods server/mods
@echo "Copying forge into server"
robocopy "bin/" server/bin
@echo "Copying config into server"
robocopy "config/" server/config
cd server
@echo "Zipping it"
7z a -tzip server.zip bin mods config
@echo "Cleaning up server"
rm -rf mods
rm -rf bin
rm -rf config
cd ..
@echo " -- Finished Building Server"
