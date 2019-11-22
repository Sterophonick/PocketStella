HEADERS =
OBJECTS = build/main.o build/6502.o build/lang.o build/emu.o build/sound.o build/vmachine.o build/vram.o
CPPFILES =
# SOURCES = src/main.c src/mem.c src/cpu.c src/hardware.c src/keypad.c
ASM =
CFLAGS = -DHRT_WITH_LIBHEART -Wall -Ofast -march=armv4t -Wno-switch -Wno-multichar -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -marm -faggressive-loop-optimizations -fverbose-asm 
ARCH =  -mthumb -mthumb-interwork
SPECS = -specs=gba.specs
PREFIX = C:\devkitPro\devkitARM\bin\arm-none-eabi-

default: pocketstella.gba

build/%.o: src/%.c $(HEADERS)
	$(PREFIX)gcc $(CFLAGS) -mthumb -Iinc $(ARCH) -c $< -o $@
	
build/%.o: src/%.cpp $(HEADERS)
	$(PREFIX)g++ $(CFLAGS) $(ARCH) -c $< -o $@
	
build/6502.o: src/6502.s
	$(PREFIX)gcc -g -marm -mthumb-interwork -c $< -o $@
	
build/main.elf: $(OBJECTS)
	$(PREFIX)gcc $(SPECS) -mthumb $(ARCH) $(OBJECTS) -lheart -lm -o build/main.elf
	
pocketstella.gba: build/main.elf
	$(PREFIX)objcopy -O binary build/main.elf pocketstella.gba
	C:/devkitPro/devkitARM/bin/gbafix pocketstella.gba -tpocketstella -cA26U -v1
	

clean:
	-rm build/*.o build/*.out build/main.elf
	-rm pocketstella.gba