#!/bin/bash

VERSION=1.16.0
SITE_URL=pdf.easytool.qzz.io

docker build -t moinologics/bentopdf-simple:v$VERSION \
	--build-arg "SITE_URL=$SITE_URL" \
	--build-arg "SIMPLE_MODE=true" \
	--build-arg "VITE_USE_CDN=true" \
	.