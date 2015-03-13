REPO=$1
git -C ~/dev clone https://github.com/puppetlabs/$REPO.git
git -C ~/dev/$REPO remote rename origin upstream
git -C ~/dev/$REPO remote add origin https://github.com/KevinCorcoran/$REPO.git

