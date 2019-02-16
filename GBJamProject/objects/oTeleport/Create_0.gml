
for(var i = 0; i<instance_number(oTeleport); i++){
	idArray[i] = instance_find(oTeleport,i);
}
for(var i = 0; i<instance_number(oTeleport); i++){
	//show_debug_message(idArray[i])
	if(idArray[i] == id){
		actualI = i;
		if(i%2 == 0){
			teleportToID = idArray[i+1];
		} else {
			teleportToID = idArray[i-1];
		}
	}
}

//show_debug_message(string(id) + " Se teletransporta a: " + string(teleportToID));
stop = false;