set Tools_project_directory /Users/anthony.lozano/projects/Tools/
set device_sim_directory /Users/anthony.lozano/saife-sims/
set device_port_base 27000

function start-sim
	cd "$device_sim_directory"devices/"$argv"
	java -cp "$device_sim_directory"/target/device-simulator-java.jar -Djava.library.path="$device_sim_directory"/lib com.saife.simulation.JavaDeviceSimulator -config device.conf
end
# TODO set network TIPRNET / DEVRNET