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
CURRENT_VERSION=`git describe --abbrev=0 --tags 2>/dev/null`

if [[ "${CURRENT_VERSION}" == "" ]]; 
then
    CURRENT_VERSION="v0.1.0"
fi	
echo "Current Version: ${CURRENT_VERSION}"

# replace . with space so can split into an array
CURRENT_VERSION_PARTS=(${CURRENT_VERSION//./ })

# get numeric portions into separate variables
MAJOR=${CURRENT_VERSION_PARTS[0]}
MINOR=${CURRENT_VERSION_PARTS[1]}
PATCH=${CURRENT_VERSION_PARTS[2]}

# increment version conditionally
if [[ $VERSION == 'major']]
then
    MAJOR=$((MAJOR+1))
elif [[ $VERSION == 'minor']]
then
    MINOR=$((MINOR+1))
elif [[ $VERSION == 'patch']]
then
    PATCH=$((PATCH+1))
else
    echo "Invalid or missing version type try -v [major|minor|patch]"
    exit 1
fi


NEW_VERSION="v${MAJOR}.${MINOR}.${PATCH}"
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