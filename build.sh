#!/usr/bin/env bash
# build.sh — mock build for the HPCM_ADMIN component.
set -euo pipefail

VERSION="${1:-2.9.0}"
mkdir -p build

echo "Building HPCM_ADMIN ${VERSION}..."
echo "This is a mock HPCM_ADMIN artifact for demo purposes — built $(date -u +%Y-%m-%dT%H:%M:%SZ)" > "build/hpcm-admin-${VERSION}.tar.gz"
sha256sum "build/hpcm-admin-${VERSION}.tar.gz" > "build/hpcm-admin-${VERSION}.tar.gz.sha256"

echo "Build complete: build/hpcm-admin-${VERSION}.tar.gz"
