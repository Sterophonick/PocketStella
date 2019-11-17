extern const u8 characters[56][8];
extern void sprite();
extern void palette();
extern void tiles();
extern void chars();
extern void scale();

typedef struct { u32 data[8]; } TILE;
typedef TILE                CHARBLOCK[512];
#define tile_mem             ((CHARBLOCK*)0x06000000)

extern u8 ArcadiaMap[1024];
extern u16* ArcadiaTiles;
extern u8 SpriteImagery[4][32];
extern s32 imagedata;
