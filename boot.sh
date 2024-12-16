set -e

GIT_REPO="https://github.com/edueo/ubuntu2204-setup"
GIT_DEST="~/.local/share/ubuntu2204-setup"
INSTALL_SCRIPT="~/.local/share/ubuntu2204-setup/install.sh"

sudo apt-get update >/dev/null
sudo apt-get install -y git >/dev/null

echo "Cloning Ubuntu 22.04 setup"
rm -rf $GIT_DEST
git clone $GIT_REPO $GIT_DEST >/dev/null

echo "Installation starting..."
source $INSTALL_SCRIPT
