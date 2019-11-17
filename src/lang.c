extern void emuMenuHelp();
extern void emuMenuControls();
extern void emuMenuDisplay();
extern void emuMenuOther();
extern void emuMenuReset();
extern void emuMenuSleep();
extern void emuMenuBack();
extern void emuMenuExit();
extern void emuMenuDisplayBrightness();
extern void emuMenu();
extern void emuMenuControllerAAuto();
extern void emuMenuControllerMode();

void (*emuMenuMainOptions[])(void) = {
	emuMenuControls,
	emuMenuDisplay,
	emuMenuHelp,
	emuMenuSleep,
	emuMenuReset,
	emuMenuExit,
};

void (*emuMenuDisplayOptions[])(void) = {
	emuMenuDisplayBrightness,
	emuMenu,
};

void (*emuMenuControllerOptions[])(void) = {
	emuMenuControllerAAuto,
	emuMenu,
};

const char *gl_main_menu_options[6] = {
	"Controller->",
	"Display->",
	//"Other settings->", //Almost complete
	"Help->", //Complete
	"Sleep", //Complete.. ?
	"Reset game", //Complete
	"Exit" //Almost complete
};

const char gl_credit_ln0[] = "GBA Lives! 2019";
const char gl_credit_ln1[] = "PocketStella 0.0";

const char *gl_controller_options[5] = {
	"A Key: ",
	"B Key: ",
	"A Autofire: ",
	"B Autofire: ",
	"<-Back",
};

const char *gl_display_options[2] = {
	"Brightness: ",
	"<-Back",
};

const char *gl_other_options[3] = {
	"VSync: ",
	"Autosleep: ",
	"<-Back",
};

const char *gl_cycles_frame_options[8] = {
	"7   ",
	"15  ",
	"20  ",
	"30  ",
	"100 ",
	"200 ",
	"500 ",
	"1000",
};

const char *gl_autosleep_options[5] = {
	"Off       ",
	"5 Minutes ",
	"10 Minutes",
	"15 Minutes",
	"20 Minutes"
};

const char *gl_help_text[10] = {
	"PocketStella - A26 Emu",
	"by Sterophonick",
	"",
	"Credits:",
	"MAMEDev",
	"Dwedit",
	"FluBBa",
	"Loopy",
	"Kuwanger"
};

const char gl_exception[] = "Advcadia has crashed!";

const char *gl_exception_types[4] = {
	"CPU Crash Instruction",
	"Illegal Instruction",
	"Unstable Instruction",
	"Division By Zero",
};

const char *gl_menu_titles[6] = {
	"Controller settings",
	"Display settings",
	"Other settings",
	"Credits",
	"Help",
	"Reconfigure controls"
};

const char *gl_keypad_menu[3] = {
	"A: ",
	"B: "
	"<-Back",
};

const char *gl_keypad_options[12] = {
	"0    ",
	"1    ",
	"2    ",
	"3    ",
	"4    ",
	"5    ",
	"6    ",
	"7    ",
	"8    ",
	"9    ",
	"Enter",
	"Clear"
};

const char *gl_vsync_options[3] = {
	"Off   ",
	"On    ",
	"Slowmo",
};

const char *gl_autofire_options[3] = {
	"Off   ",
	"On    ",
	"With R",
};

const unsigned long gl_autosleep_times[4] = {
	100,
	36000,
	54000,
	72000,
};

const char *gl_brightness_options[5] = {
	"|    ",
	"||   ",
	"|||  ",
	"|||| ",
	"|||||",
};