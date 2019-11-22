#define  sysVia  1
#define  userVia 2

extern int programCounter;
extern int accumulator;
extern int XReg;
extern int YReg;
//extern int PSR;
extern int stack;
extern int intStatus;
// never returns...
void a26Execute(void);

// this isn't really an int, but a struct
extern int Asm6502State;