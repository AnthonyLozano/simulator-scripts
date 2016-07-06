#!/usr/bin/env fish
source config.fish
set curdir $PWD #Stash the cwd 
if True
	cd $Tools_project_directory/device-simulator-java
	if not mvn package
		echo Couldn\'t Package the device simulator... Aborting update.
	end
	cd target
	unzip -o $Tools_project_directory/target/device-simulator-java-1.0.0-SNAPSHOT-darwin_x86_64_apple-jar-with-dependencies.zip -d $device_sim_directory/
end
cd $PWD #restore the cwd