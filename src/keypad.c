#include <libheart.h>

u8 keydata[8];

void GetKeypad()
{
	if(keyDown(KEY_SELECT)) //Power
	{
		keydata[0] = 1;
	}else{
		keydata[0] = 0;
	}
	if(keyDown(KEY_RIGHT)) //Right
	{
		keydata[1] = 1;
	}else{
		keydata[1] = 0;
	}
	if(keyDown(KEY_LEFT)) //Left
	{
		keydata[2] = 1;
	}else{
		keydata[2] = 0;
	}
	if(keyDown(KEY_DOWN)) //Down
	{
		keydata[3] = 1;
	}else{
		keydata[3] = 0;
	}
	if(keyDown(KEY_UP)) //Up
	{
		keydata[4] = 1;
	}else{
		keydata[4] = 0;
	}
	if(keyDown(KEY_R)) //C
	{
		keydata[5] = 1;
	}else{
		keydata[5] = 0;
	}
	if(keyDown(KEY_B)) //B
	{
		keydata[6] = 1;
	}else{
		keydata[6] = 0;
	}
	if(keyDown(KEY_A)) //A
	{
		keydata[7] = 1;
	}else{
		keydata[7] = 0;
	}
}

void MergeKeyData()
{

}

void MiscKeys()
{
	
}