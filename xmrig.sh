apt update
apt upgrade
apt-get install git build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev
apt-get install git build-essential cmake automake libtool autoconf
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/scripts
./build_deps.sh && cd ../build
cmake .. -DXMRIG_DEPS=scripts/deps
make -j$(nproc)

/root/xmrig/build/./xmrig -a rx -o stratum+ssl://rx-asia.unmineable.com:443 -u XMR:85eGmypRT4qEX7kyusuFjuKbBrJijkV27FiYDx71CgAQiyD3w5fi8eeapuUUSRaTjnKD6vZkCxL5iJsQ6dRi5Jtw8Zsk23p.unmineable_worker_jbiijmfa -p x 
