#!/bin/bash
rm -rf knowledge;
git clone --depth=1 https://github.com/polarhive/knowledge
git clone --depth=1 https://github.com/polarhive/ideas knowledge/wiki/content/ideas
git clone --depth=1 https://github.com/polarhive/UE23CS
rm -rf UE23CS/{README.md,LICENSE,.github}
mv UE23CS/src/{uni.md,index.md} 
mv UE23CS knowledge/wiki/content/uni/
mv knowledge/wiki/content/uni/src/* knowledge/wiki/content/uni
rm -rf knowledge/wiki/content/uni/src
cd knowledge/wiki
npm i; npx quartz build
