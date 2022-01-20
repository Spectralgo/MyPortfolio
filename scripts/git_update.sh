#!/bin/bash

VERSION=""

#get parameters
while getopts v: flag
do
    case "${flag}" in
        v) VERSION="${OPTARG}" ;;
    esac
done

# get highest tag number, and add v0.1.O if doesn't exist
git fetch --prune --unshallow 2>/dev/null
CURRENT_VERSION=`git describe --tags --abbrev=0 2>/dev/null`

if [[ "${CURRENT_VERSION}" == "" ]]; 
then
    CURRENT_VERSION="v0.1.0"
fi	
echo "Current Version: ${CURRENT_VERSION}"

# replace . with space so can split into an array
CURRENT_VERSION_PARTS=(${CURRENT_VERSION//./ })

if [[ $VERSION == 'major']]
then
    # bump major version
    ((CURRENT_VERSION_PARTS[1]++))
    CURRENT_VERSION_PARTS[2]="0"
    CURRENT_VERSION_PARTS[3]="0"
elif [[ $VERSION == 'minor']]
then
    # bump minor version
    ((CURRENT_VERSION_PARTS[2]++))
    CURRENT_VERSION_PARTS[3]="0"
elif [[ $VERSION == 'patch']]
    # bump build version
    ((CURRENT_VERSION_PARTS[3]++))
else
    echo "Invalid or missing version type. try: -v major, minor or patch"
    exit 1
fi

NEW_VERSION="v${CURRENT_VERSION_PARTS[1]}.${CURRENT_VERSION_PARTS[2]}.${CURRENT_VERSION_PARTS[3]}"
echo "(${VERSION}) updating ${CURRENT_VERSION} to ${NEW_VERSION}"

#get current hash and see if it already has a tag
GIT_COMMIT=`git rev-parse HEAD`
NEEDS_TAG=`git describe --contains $GIT_COMMIT 2>/dev/null`

# only tag if no tag already
if [[ -z "$NEEDS_TAG" ]]
then
    echo "Tagged with ${NEW_VERSION}"
    git tag $NEW_VERSION
    git push --tags
    git push
else
    echo "Already a tag on this commit"
fi

echo ::set-output name=git-tag::$NEW_VERSION

exit 0