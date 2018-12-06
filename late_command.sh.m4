set -e

mkdir /target/home/__USERNAME__/.ssh
cat /cdrom/__PUBLIC_KEY__ >/target/home/__USERNAME__/.ssh/authorized_keys
chmod 700 /target/home/__USERNAME__/.ssh
chown 1000:1000 \
	/target/home/__USERNAME__/.ssh \
	/target/home/__USERNAME__/.ssh/authorized_keys

cp /cdrom/vagrantnopasswd /target/etc/sudoers.d/vagrantnopasswd
chmod 440 /target/etc/sudoers.d/*
chown 0:0 /target/etc/sudoers.d/*
