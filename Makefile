
obj-m += helloWorld.o

SRC := $(shell pwd)

all:
	echo $(SRC)
	echo $(KERNEL_PATH)
	$(MAKE) -C$(KERNEL_SRC) M=$(SRC) modules


modules_install:
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install
