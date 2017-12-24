#!/bin/bash
#-n vds: имя новой виртуальной машины, в данном примере vds.
#-r 256: определяет размер памяти виртуальной машины в мегабайтах.
#–disk path=/home/vds.img,bus=virtio,size=4: указывает путь к виртуальному диску, который может быть файлом, разделом или логическим томом. В этом примере файл с именем web_devel.img в каталоге /var/lib/libvirt/images/ размером 4 гигабайта, использующий virtio в качестве дисковой шины.
#-c jeos.iso: файл, используемый как виртуальный CDROM. Файл может быть как образом ISO, так и путем к устройству CDROM основной системы.
#–accelerate: разрешает использование ускоряющих технологий ядра.
#–network: обеспечивает детали, касающиеся сетевого интерфейса виртуальной машины.
#–vnc: предоставление гостевой виртуальной консоли через VNC.
#–noautoconsole: не подключается автоматически к консоли виртуальной машины.
#-v: создает полностью вируализированную гостевую систему.
sudo virt-install -n vds -r 256 \
--disk path=/home/vds.img,bus=virtio,size=4 -c \
jeos.iso --accelerate --network network=default,model=virtio \
--connect=qemu:///system --vnc --noautoconsole -v