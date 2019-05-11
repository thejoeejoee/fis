PACKAGES = esp-firmware doc node-red-contrib-fis

all: clone-all

clone-all: clone-doc clone-esp-firmware clone-node-red-contrib-fis

clone-esp-firmware:
	test ! -d esp-firmware && git clone git@github.com:thejoeejoee/fis-esp-firmware.git esp-firmware || true

clone-doc:
	test ! -d doc && git clone git@github.com:thejoeejoee/fis-doc.git doc || true

clone-node-red-contrib-fis:
	test ! -d node-red-contrib-fis && git clone git@github.com:thejoeejoee/node-red-contrib-fis.git node-red-contrib-fis || true

pull-all:
	printf "${PACKAGES}" | xargs -d" " -n1 -IPKG git --git-dir=./PKG/.git pull

.ONESHELL:
buid-doc-disk: clone-all
	make pull-all
	cd doc
	make install && make
	cd ..
	cp doc/*.pdf doc-disk