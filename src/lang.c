const char *gl_main_menu_options[9] = {
	"Controller->",
	"Display->",
	"Other settings->", 
	"Save State",
	"Load State",
	"Help->",
	"Sleep",
	"Reset game",
	"Exit"
};

const char gl_credit_ln0[] = "GBA Lives! 2019";
const char gl_credit_ln1[] = "PocketStella 0.0";

const char *gl_controller_options[2] = {
	"Reconfigure Controls->",
	"<-Back",
};

const char *gl_display_options[4] = {
	"Palette: ",
	"Brightness: ",
	"Double size: ",
	"<-Back",
};

const char *gl_other_options[5] = {
	"VSync: ",
	"Autosleep: ",
	"Swap A-B: ",
	"Sound: ",
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
	"PocketStella - A26 Emu 4 GBA",
	"by Sterophonick",
	"",
	"Credits:",
	"",
	"",
	"Dwedit",
	"FluBBa",
	"Loopy",
	"Kuwanger"
};

const char gl_exception[] = "PocketStella has crashed!";

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

const char *gl_keypad_menu[4] = {
	"A: ",
	"Select: ",
	"Start: ",
	"<-Back",
};

const char *gl_keypad_options[16] = {
	"0",
	"1",
	"2",
	"3",
	"4",
	"5",
	"6",
	"7",
	"8",
	"9",
	"A",
	"B",
	"C",
	"D",
	"E",
	"F",
};

const char *gl_palettes[7] = {
	"B/W   ",
	"Red   ",
	"Blue  ",
	"Yellow",
	"Purple",
	"Sepia ",
	"DMG   ",
};

const unsigned short gl_clock_speeds[8] = {
	7,
	15,
	20,
	30,
	100,
	200,
	500,
	1000,
};

const unsigned short palettes[14] = {
	0x18C6, 0xFFFF, // B/W
	0x000C, 0x5EFF, // Red
	0x3000, 0x7F17, // Blue
	0x018B, 0x5FFF, // Yellow
	0x3008, 0x7EFD, //Purple
	0x010C, 0x5FBF, //Sepia
	0x1CE3, 0x53BA //DMG
};

const char *gl_vsync_options[3] = {
	"Off   ",
	"On    ",
	"Slowmo",
};

const unsigned long gl_autosleep_times[4] = {
	100,
	36000,
	54000,
	72000,
};

const char gl_request_ext[]="Exit requested, quitting now.";

const char *gl_brightness_options[5] = {
	"|    ",
	"||   ",
	"|||  ",
	"|||| ",
	"|||||",
};