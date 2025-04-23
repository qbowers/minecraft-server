mkdir -p server
cd server
# wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.16.5-36.2.20/forge-1.16.5-36.2.20-installer.jar
wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.20.1-47.4.0/forge-1.20.1-47.4.0-installer.jar

java -jar forge-1.20.1-47.4.0-installer.jar --installServer
# You accept the EULA by doing this
echo 'eula=true' > eula.txt

ferium --config-file ferium.json upgrade
# Symlink the current version to the generic name.
# ln -s forge-1.20.1-47.4.0.jar forge.jar
# Test running the server.
# nix-shell -p jre8 --run 'java -Xms1G -Xmx7G -jar forge.jar --nogui'
# When the server has started, type `stop` to stop.
# stop