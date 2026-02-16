obj-m += mod_zkprologml_erdfa_term.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

install:
	sudo insmod mod_zkprologml_erdfa_term.ko

uninstall:
	sudo rmmod mod_zkprologml_erdfa_term
