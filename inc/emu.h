typedef struct
{
	u8 a_key;
	u8 b_key;
	u8 brightness;
	u8 vsync;
	u8 firstboot;
	u8 a_auto;
	u8 b_auto;
}emu;
extern emu* Advcadia;
extern void emuMenu();
extern u8 CopyVRAM;

#define emuMenuHelperLoadMenu(tblptr, count)\
	emuMenuArrowPos = 0;\
	for(u8 disploop = 0; disploop < count; disploop++) \
	{ \
		hrt_PrintOnTilemap(1, 7+disploop, (char*)tblptr[disploop]); \
	}\
	hrt_PrintOnTilemap(0, 18, (char*)gl_credit_ln0);\
	hrt_PrintOnTilemap(0, 19, (char*)gl_credit_ln1);\
	hrt_PrintOnTilemap(0, 7+emuMenuArrowPos, "*");

#define emuMenuHelperMain(max, opptr) \
	hrt_VblankIntrWait();\
	hrt_GetPad(&keypad);\
	emuMenuHelperRTC();\
	if(hrt_IsKeyPressed(UP) && !emuMenuKeyLockUp)\
	{\
		hrt_PrintOnTilemap(0, 7+emuMenuArrowPos, " ");\
		if(emuMenuArrowPos > 0)\
		{\
			emuMenuArrowPos--;\
		}\
		hrt_PrintOnTilemap(0, 7+emuMenuArrowPos, "*");\
		emuMenuKeyLockUp++; \
	}\
	if(emuMenuKeyLockUp && !hrt_IsKeyPressed(UP))\
	{\
		emuMenuKeyLockUp = 0;\
	}\
	if(hrt_IsKeyPressed(DOWN) && !emuMenuKeyLockDown)\
	{\
		hrt_PrintOnTilemap(0, 7+emuMenuArrowPos, " ");\
		if(emuMenuArrowPos < max)\
		{\
			emuMenuArrowPos++;\
		}\
		hrt_PrintOnTilemap(0, 7+emuMenuArrowPos, "*");\
		emuMenuKeyLockDown++;\
	}\
	if(emuMenuKeyLockDown && !hrt_IsKeyPressed(DOWN))\
	{\
		emuMenuKeyLockDown = 0;\
	}\
	if(hrt_IsKeyPressed(A) && !emuMenuKeyLockA)\
	{\
		emuMenuKeyLockA = 1;\
		opptr[emuMenuArrowPos]();\
	}\
	if(emuMenuKeyLockA && !hrt_IsKeyPressed(A))\
	{\
		emuMenuKeyLockA = 0;\
	}\
	
