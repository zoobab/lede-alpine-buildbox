[![noswpatv3](http://zoobab.wdfiles.com/local--files/start/noupcv3.jpg)](https://ffii.org/donate-now-to-save-europe-from-software-patents-says-ffii/)
About
=====

Builds LEDE on Alpine Linux (3.6 here).

Failures
========

Some packages like u-boot fails to build:

```
[...]
make -C tools all
make[5]: Entering directory '/home/zoobab/source/build_dir/target-mips_24kc_musl/u-boot-nbg460n_550n_550nh/u-boot-2010.03/tools'
gcc -g -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -idirafter /home/zoobab/source/build_dir/target-mips_24kc_musl/u-boot-nbg460n_550n_550nh/u-boot-2010.03/include -idirafter /home/zoobab/source/build_dir/target-mips_24kc_musl/u-boot-nbg460n_550n_550nh/u-boot-2010.03/include2 -idirafter /home/zoobab/source/build_dir/target-mips_24kc_musl/u-boot-nbg460n_550n_550nh/u-boot-2010.03/include -I /home/zoobab/source/build_dir/target-mips_24kc_musl/u-boot-nbg460n_550n_550nh/u-boot-2010.03/libfdt -I /home/zoobab/source/build_dir/target-mips_24kc_musl/u-boot-nbg460n_550n_550nh/u-boot-2010.03/tools -DTEXT_BASE=0x81E00000 -DUSE_HOSTCC -D__KERNEL_STRICT_NAMES -pedantic -c -o crc32.o /home/zoobab/source/build_dir/target-mips_24kc_musl/u-boot-nbg460n_550n_550nh/u-boot-2010.03/lib_generic/crc32.c
In file included from /home/zoobab/source/build_dir/target-mips_24kc_musl/u-boot-nbg460n_550n_550nh/u-boot-2010.03/lib_generic/crc32.c:15:0:
/home/zoobab/source/build_dir/target-mips_24kc_musl/u-boot-nbg460n_550n_550nh/u-boot-2010.03/include/u-boot/crc.h:29:50: error: unknown type name 'uint'
 uint32_t crc32 (uint32_t, const unsigned char *, uint);
                                                  ^~~~
/home/zoobab/source/build_dir/target-mips_24kc_musl/u-boot-nbg460n_550n_550nh/u-boot-2010.03/include/u-boot/crc.h:30:53: error: unknown type name 'uint'
 uint32_t crc32_wd (uint32_t, const unsigned char *, uint, uint);
                                                     ^~~~
/home/zoobab/source/build_dir/target-mips_24kc_musl/u-boot-nbg460n_550n_550nh/u-boot-2010.03/include/u-boot/crc.h:30:59: error: unknown type name 'uint'
 uint32_t crc32_wd (uint32_t, const unsigned char *, uint, uint);
                                                           ^~~~
/home/zoobab/source/build_dir/target-mips_24kc_musl/u-boot-nbg460n_550n_550nh/u-boot-2010.03/include/u-boot/crc.h:31:58: error: unknown type name 'uint'
 uint32_t crc32_no_comp (uint32_t, const unsigned char *, uint);
                                                          ^~~~
make[5]: *** [Makefile:200: crc32.o] Error 1
```

Links
=====

* https://wiki.openwrt.org/doc/howto/build
