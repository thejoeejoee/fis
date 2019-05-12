PACKAGES = esp-firmware doc node-red-contrib-fis fis-node-red

all: clone-all

clone-all: clone-doc clone-esp-firmware clone-node-red-contrib-fis clone-fis-node-red

clone-esp-firmware:
	test ! -d esp-firmware && git clone git@github.com:thejoeejoee/fis-esp-firmware.git esp-firmware || true

clone-doc:
	test ! -d doc && git clone git@github.com:thejoeejoee/fis-doc.git doc || true

clone-node-red-contrib-fis:
	test ! -d node-red-contrib-fis && git clone git@github.com:thejoeejoee/node-red-contrib-fis.git node-red-contrib-fis || true

clone-fis-node-red:
	test ! -d fis-node-red && git clone git@github.com:thejoeejoee/fis-node-red.git fis-node-red || true

pull-all:
	printf "${PACKAGES}" | xargs -d" " -n1 -IPKG git --git-dir=./PKG/.git pull

pack-disk: build-doc-disk
	rm xkolar71.zip || true
	zip -r xkolar71.zip doc-disk/* 

.ONESHELL:
build-doc-disk: clone-all pull-all
	cp doc/xkolar71-*.pdf doc-disk
	cp -r ${PACKAGES} doc-disk/

	find doc-disk -type d -name .git -exec rm -fr "{}" \; || true
