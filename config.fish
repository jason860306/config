# environment for common
set -x BFP2PSRV_HOME /home/szj0306/Documents/bfp2psrv/p2p_server
set -x TAISHAN_HOME $BFP2PSRV_HOME/branches/taishan/server
set -x NASA_HOME $BFP2PSRV_HOME/branches/nasa/server
set -x DOCKER_HOME /opt/docker_v

# shadowsocks for fish
set -x ALL_PROXY socks5://127.0.0.1:1080
# set -x http_proxy http://192.168.203.153:10800
# set -x https_proxy https://192.168.203.153:10800

# environment for go
set -x GOROOT /opt/go
set -x GOPATH /home/szj0306/Documents/gopath
set -x GOBIN $GOPATH/bin
set -x GOTOOLDIR /opt/go/pkg/tool/linux_amd64
# (go env GOTOOLDIR)

set -x PATH $PATH $GOROOT/bin $GOPATH/bin

set -x EDITOR "/usr/bin/emacs -Q -nw"

# environment for ipfs in docker
set -x IPFS_DOCKER_HOME $DOCKER_HOME/ipfs
set -x ipfs_staging $IPFS_DOCKER_HOME/staging
set -x ipfs_data $IPFS_DOCKER_HOME/data
