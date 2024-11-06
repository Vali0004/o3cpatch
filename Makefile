all : main.o main.bin pyinstall genpatch flash

LDFLAGS:=-O3 -nostartfiles -ffreestanding -Wl,-T,src/main.ld -Wl,-Map=bin/main.map

# https://gnutoolchains.com/risc-v/
# https://sysprogs.com/getfile/1107/risc-v-gcc10.1.0.exe
CC:=C:/Program Files/SysGCC/bin/riscv64-unknown-elf-

main.o : src/main.c
	if not exist "bin" mkdir bin
	
	$(CC)gcc -g -march=rv32imafcxw -mabi=ilp32f -o bin/$@ $^ $(LDFLAGS)

main.bin : main.o
	$(CC)objcopy -O binary bin/$^ bin/$@

genpatch : 
	py -3 src/py/o3cpatch.py

pyinstall : 
	pip install -r src/py/requirements.txt

flash : 
	tools/upgrade -r

clean : 
	rm -rf *.o *~ bin

cleanwin : 
	if exist "bin" rmdir /s /q bin

rebuild : cleanwin all