#!/bin/bash
mount /dev/sda1 /boot                                                                                                                                                                                                                        
rm -fr /crap/gentooOnesis.bak.old                                                                                                                                                                                                            
mv /crap/gentooOnesis.bak /crap/gentooOnesis.bak.old                                                                                                                                                                                         
mv /crap/gentooOnesis /crap/gentooOnesis.bak                                                                                                                                                                                                 
mkdir /crap/gentooOnesis        

/home/shrinidhi/bin/gitHub/systemTools/clone/makeClone.py --root / -t /crap/gentooOnesis/  -l /blueprod/STOR1/CRAP.serv/:/crap/STOR1.crap,/blueprod/STOR1/backup1/:/crap/incoming -b -x proc,dev,sys,blueprod,mnt,/crap,/BACKUP/,/usr/portage,run,/etc/udev/rules.d/,tmp,home,.config/,.pulse/,.pulse-cookie -m sys:root,home:root,tmp:root,/etc/udev/rules.d/:root,run:root,/dev/:root,/proc/:root,/crap:root,mnt/cdrom:root,/usr/portage:portage,/crap/LOCAL.crap:root%0777 -e /var/cache/,/var/log/,var/tmp,var/spool
# USE="-* build" emerge --oneshot --root=/crap/gentooOnesis --nodeps --config-root=/ baselayout
# rsync -av /bin/ /crap/gentooOnesis/bin/ --delete
# rsync -av /boot/ /crap/gentooOnesis/boot/ --delete
# rsync -av /etc/ /crap/gentooOnesis/etc/ --exclude=/udev/rules.d/ --delete
# rsync -av lib /crap/gentooOnesis/
# rsync -av /lib32/ /crap/gentooOnesis/lib32/ --delete
# rsync -av /lib64/ /crap/gentooOnesis/lib64/ --delete
# rsync -av /libexec /crap/gentooOnesis/ 
# rsync -av /opt/ /crap/gentooOnesis/opt/ --delete
# rsync -av /res /crap/gentooOnesis/
# rsync -av /root/ /crap/gentooOnesis/root/ --delete
# rsync -av /sbin/ /crap/gentooOnesis/sbin/ --delete
# rsync -av /usr/ /crap/gentooOnesis/usr/ --delete --exclude=/portage/
# rsync -av /var/ /crap/gentooOnesis/var/ --exclude=/tmp/ --exclude=/cache/ --exclude=/run/ --exclude=/empty/ --exclude=/log/ --exclude=/mail/ --exclude=/spool/ --delete
# 
# cd /crap/gentooOnesis/ 
# 
# mkdir -p crap/LOCAL.crap 
# # Make all STORAGE servers
# mkdir -p blueprod/STOR1 
# ln -s /blueprod/STOR1/library/ library 
# ln -s /blueprod/STOR1/proj/ proj 
# ln -s /blueprod/STOR1/projdump/ projdump 
# ln -s /blueprod/STOR1/CRAP.serv/ crap/STOR1.crap 
# ln -s /blueprod/STOR1/backup1/ crap/incoming




