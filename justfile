set windows-shell := ["pwsh.exe", "-Command"]
set shell := ["bash", "-uc"]
set dotenv-load := false

TESTMOD := "/mnt/g/Vortex Mods/skyrimse/GuardsTalk/"

# List available recipes.
@help:
    just -l

# Install current build to the test mod.
install:
    #!/usr/bin/env bash
    echo "copying to live mod for testing..."
    outdir="{{TESTMOD}}"
    cp -rp GuardsTalk_KID.ini "$outdir"

# Render nexus docs to bbcode & put them in the clipboard.
docs:
	md2nexus < nexus_docs.md | pbcopy

# Build a mod archive for Nexus.
archive VERSION:
	#!/usr/bin/env bash
	set -e
	ar=$(which 7zz)
	if [[ -z "$ar" ]]; then
	    ar=$(which 7z)
	fi
	if [[ -z "$ar" ]]; then
	    echo "7zip not found at 7z or 7zz. You need to install or alias it to archive."
	    exit 1
	fi
	#sed=$(which gsed)
	#if [[ -z "$ar" ]]; then
	#    sed=$(which sed)
	#fi
	#echo $(git log --no-walk --tags --oneline -1)
	#version=$(git log --no-walk --tags --oneline -1 | "$sed" -n "s/^.*tag: v\(\S*\)/\1/p")
	#echo "-- $version --"
	version="{{VERSION}}"
	release_name=GuardsTalk_v${version}
	mkdir -p "releases/$release_name"
	cp -p GuardsTalk_KID.ini "releases/$release_name"
	cd releases
	rm -f "$release_name".7z
	"$ar" a "$release_name".7z "$release_name"
	rm -rf "$release_name"
	cd ..
	echo "Mod archive for v${version} ready at releases/${release_name}.7z"
