#!/bin/bash
git clone --depth=1 https://codeberg.org/polarhive/knowledge
git clone --depth=1 https://codeberg.org/polarhive/UE23CS /tmp/UE23CS
git clone --depth=1 https://codeberg.org/polarhive/ideas /tmp/ideas
mv /tmp/ideas knowledge/wiki/content/ideas/
mv /tmp/UE23CS/src knowledge/wiki/content/uni/
cd knowledge/wiki || exit
npm i; npx quartz build
