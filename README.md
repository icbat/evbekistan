Evbekistan
==========

A Minecraft modpack.

Pushing to this will deploy and overwrite to the live server!

## Contributing

### Updating Forge version

Since Forge creates a Minecraft.jar, and we can't rightly store that in GitHub, this part will need to be done manually.

Follow the steps here:  https://apexminecrafthosting.com/how-to-setup-minecraft-forge/

### Adding Mods/Changing Config

Mods and Config live under Evbekistan/.minecraft/ in their own folders.

### Releasing

Incrementing the git tag with a new version will automatically

- Generate a new Release w/ a client.zip that can be imported into MultiMC
- Push all of these mods/config to the server

The server will still need to be restarted, or next restart-if-empty will update the server.
