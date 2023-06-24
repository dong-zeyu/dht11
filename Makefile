obj-m += dht11.o

KDIR=/lib/modules/$(kernelver)/build
PWD := $(shell pwd)

default:
	make -C $(KDIR) M=$(PWD) modules

install:
	make -C $(KDIR) M=$(PWD) modules_install && modprobe -r dht11 && modprobe dht11

clean:
	make -C $(KDIR) M=$(PWD) clean
