#!/bin/sh

cd /slidev

npm install @slidev/cli @slidev/theme-default @slidev/theme-seriph playwright-chromium
npx slidev --remote

