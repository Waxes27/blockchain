start: setup
	cd ~/fabric-dev-servers
	export FABRIC_VERSION=hlfv12
	./startFabric.sh
	./createPeerAdminCard.sh

	composer-playground


setup: install
	npm install -g composer-cli@0.20
	npm install -g composer-rest-server@0.20
	npm install -g generator-hyperledger-composer@0.20
	npm install -g yo
	npm install -g composer-playground@0.20

	mkdir ~/fabric-dev-servers && cd ~/fabric-dev-servers

	curl -O https://raw.githubusercontent.com/hyperledger/composer-tools/master/packages/fabric-dev-servers/fabric-dev-servers.tar.gz
	tar -xvf fabric-dev-servers.tar.gz

	cd ~/fabric-dev-servers
	export FABRIC_VERSION=hlfv12
	./downloadFabric.sh

install:
	sudo apt install npm curl  -y