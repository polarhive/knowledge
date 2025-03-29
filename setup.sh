#!/bin/bash
rm -rf /tmp/build; mkdir -p /tmp/build; cd /tmp/build
git clone --depth=1 https://github.com/polarhive/knowledge
git clone --depth=1 https://github.com/polarhive/ideas /tmp/build/knowledge/wiki/content/ideas
git clone --depth=1 https://github.com/polarhive/UE23CS /tmp/build/knowledge/wiki/content/uni
mv /tmp/build/knowledge/wiki/content/uni/src/{uni.md,README.md} 
mv /tmp/build/knowledge/wiki/content/uni/src/* /tmp/build/knowledge/wiki/content/uni/
rm -rf /tmp/build/knowledge/wiki/content/uni/src /tmp/build/knowledge/wiki/content/uni/LICENSE
cd /tmp/build/knowledge/wiki || exit
npm i; npx quartz build
