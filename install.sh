mkdir -p server
cd server
# wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.16.5-36.2.20/forge-1.16.5-36.2.20-installer.jar
wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.20.1-47.4.0/forge-1.20.1-47.4.0-installer.jar

java -jar forge-1.20.1-47.4.0-installer.jar --installServer
# You accept the EULA by doing this
echo 'eula=true' > eula.txt

cd ..
cp server.properties server

# install mods
ferium --config-file ferium.json upgrade