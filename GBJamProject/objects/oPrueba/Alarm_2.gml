/// @description 
// Puede escribir su código en este editor

if (instance_exists(objEnemyParent))
{
    objEnemyParent.velMod=1;
}

if (instance_exists(objKillingThingParent))
    objKillingThingParent.velMod=1;
	
if (instance_exists(oPingu))
{		
	oPingu.pinguCanMove=true;			
}
			
	
audio_resume_sound(oMusicManager.audioGame);	


