codename=$(perl -n -e'/UBUNTU_CODENAME=(\w+)/ && print $1' < /etc/os-release)

function ppa {
  echo "deb $2 $codename main" \
    > /etc/apt/sources.list.d/$1.list
  apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $3
}

ppa paparazzi http://ppa.launchpad.net/paparazzi-uav/ppa/ubuntu 02599182
ppa gcc-arm-embedded http://ppa.launchpad.net/team-gcc-arm-embedded/ppa/ubuntu \
  F64D33B0

apt-get update

apt-get -y install paparazzi-dev paparazzi-jsbsim gcc-arm-embedded

rm -rf /var/lib/apt/lists/*
