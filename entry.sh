#! /bin/bash

# git config
git config --global user.name fluidog
git config --global user.email fluidog@163.com

git config --global url.https://hub.fastgit.xyz.insteadOf https://github.com
git config --global url.git@github.com:fluidog.pushInsteadOf https://github.com/fluidog


# ssh config
cat >~/.ssh/config  <<<"StrictHostKeyChecking no"

# Add some public key from the host which you want login from.
# Warn : Delet or change the keys below to yourself.
echo >>~/.ssh/authorized_keys \
"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDTqD2o3cVwPSyF3bdKp8SDcsKkpNIfe64Ojm/vnlGmHnRSvzGlf5Hb8LX\
LLWhHDEGQEOFPVfCcQWXIs9G2KHeSfttK85JTCQaTRiX+0tLoNK+rX86ZgPsfgUVbofSacy2kjSJgqLG+qKC31I6iBRb1SK/\
4IxWuWJ6FixPzelyNAvElAz8nbbgWtFXtDpybK0ErZZdyqr2dJ/5C3WN1fCPP3YyuSEfcaexM6Hp7u8MM2doeOHfaw3D6dky\
sIy+6elUaM8s2wBo1YWfcCNApk1WhOurd4PZSD7yD0LcQSUpbE+gL7FlNnpmE6ec+XuYS1Z3iDohGxYL0UfpvXVHO8vfVBSa\
PN1eeR3ZeAZd2I8vY7UqVCP2UZAWwlT1NpJjtCUl70wqEr+6/kI6oCaE15Uss8QBxDdkmEUgVfn9EcfhALmrF0Gp0WyH0tGW\
wHnBONfexAJ6Fgwso1NAk9FPlnGWvYohKhVi0BU1KCCurNoTp8v8FMylfM2nOezpLMESw8b0= liuqi@DESKTOP-8V1AJS6"


echo >>~/.ssh/authorized_keys \
"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC6aZYJtPRrWujbE9nrlcJrTuC/9CWL2N9rAAse546DIBL\
JCaD1OKZlFy8sPu/PaNjHF6L2RAKWguh2rZAc4WXgyjZH1Dc3Ue2wDJRghzmmO+BuqE6Qk27ICPCiMcAdyxm\
Tp2RDib/xNp+muQKuv+QONmeP06vkMJzTTgC+srLvO076mAXSv8fNtWQ6O2jApJ9EcuY0BnvJi216A6BjoMA\
uo2Ctg+cf5Uf9qvOi5ojWj8mFLfvEkzTaYOcUMqZ/rIGPu0vv58B2ZxfY+klP6hWmU8sDcbTWg0H6ZeHln0B\
N1kD2SKvLi6oZklzW8DmywnSRPlxCdakvDxV+KvRNpOfRW78K6I8wXRN1ps6Kksuz2oCrmYVYOfb5kMVi7U6\
8oBJYPDimm5/tliNeHIXfgopp+m2Q3F/U1/0GoOUjkI+7KdBDuL8HlaGy9YteYGJKCWWDTo+X2JEbUb8/GiO\
kzsYv6iXqWJR93LDpm6xQYfo7eU1myfvFiDfEIl2QGRN4KwU= root@fluidog-workspace"



# Default login shell
chsh -s /bin/zsh

mkdir -p  /run/sshd

exec /sbin/sshd -D -p 6722
