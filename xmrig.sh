apt update
apt upgrade
apt-get install git build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev

git clone https://github.com/xmrig/xmrig
cd xmrig
mkdir build
cd bulid
cmake -DWITH_HWLOC=OFF ..
mak
