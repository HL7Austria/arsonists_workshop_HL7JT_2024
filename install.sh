# Prerequisites:
# Java; Node.js
# Optional: VS.Code; The FHIR Shorthand Extension

sudo npm install -g fsh-sushi
# alternative without -g for only local user!

# Optional, install jekyll:
sudo apt-get install jekyll

# Create an empty project with sushi # sushi will automatically create a folder that has the name of the IG:
sushi --init
cd YOUR_FOLDER

# Download IG publisher and put it into the input-cache folder:
./_updatePublisher.sh
# backup: https://github.com/HL7/fhir-ig-publisher/releases

# Creating the sushi files (optional if you use IG), --build is incorrect and not supported by sushi
sushi

# Creating the full IG
# Then run java -jar ./input-cache/publisher.jar -ig ig.ini (IG direcly) or genonce.sh (downloaded via sushi)
java -jar ./input-cache/publisher.jar -ig ig.ini
# or
./_genonce.sh

# Viewing the IG
# you can just open the index file in the output folder using any browser