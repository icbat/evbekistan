@echo " -- Building Client"
@echo "Deleting old archive"
rm client/client.zip
@echo "Copying mods into client"
robocopy mods client/mods
cd client
@echo "Zipping it"
7z a -tzip client.zip bin mods
@echo "Cleaning up client/mods"
rm -rf mods
cd ..
