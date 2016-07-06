#!/usr/bin/env fish

source config.fish

set devices "$device_sim_directory"devices/*
set command "java -cp $TESTER_HOME/target/device-simulator-java.jar  -Djava.library.path=$TESTER_HOME/lib com.saife.simulation.JavaDeviceSimulator -config device.conf"
for folder in $devices
	osascript -e 'tell application "iTerm" to activate' -e 'tell application "System Events" to tell process "iTerm" to keystroke "t" using command down'
	osascript -e 'tell application "iTerm" to tell session -1 of current terminal to write text ""'

end