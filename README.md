# DHT11 Linux

Modified DHT11 Linux kernel driver with low error rate

Test on linux-5.10

## Build

```bash
make -C /lib/modules/`uname -r`/build M=$PWD
```
