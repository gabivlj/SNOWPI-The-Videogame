//SPAWN OF POWER-UPS 

	random1=irandom_range(0,3);
    random2=irandom_range(0,4);
    
 if (random1==2) {
    switch(random2)
    {
        case 0:
		instance_create_depth(x,y,depth,oStopTime)
        break;
		
		case 1:
		instance_create_depth(x,y,depth,oLife)
		break;
		
		case 2:
		instance_create_depth(x,y,depth,oBoots)
		break;
		
		case 3:
		instance_create_depth(x,y,depth,oPickaxe)
		break;
		
		case 4:
		instance_create_depth(x,y,depth,oFire)
		break;
		
		default:
		instance_create_depth(x,y,depth,oStopTime)
		break;
    }
}

