#!/bin/bash

VERSION=""

#get parameters
while getopts v: flag
do
    case "${flag}" in
        v) VERSION=${OPTARG} ;;
    esac
done

# get highest tag number, and add v0.1.O if doesn't exist
git fetch --prune --unshallow 2>/dev/null
CURRENT_VERSION=`git describe --abbrev=0 --tags 2>/dev/null`

if [[ ${CURRENT_VERSION} == "" ]] 
then
    CURRENT_VERSION="v0.1.0"
fi	
echo "Current Version: ${CURRENT_VERSION}"

regex="([0-9]+).([0-9]+).([0-9]+)"
if [[ $CURRENT_VERSION =~ $regex ]]; then
  major="${BASH_REMATCH[1]}"
  minor="${BASH_REMATCH[2]}"
  patch="${BASH_REMATCH[3]}"
fi

# check paramater to see which number to increment
if [[ "$VERSION" == "patch" ]]; then
  patch=$(echo $patch + 1 | bc)
elif [[ "$VERSION" == "minor" ]]; then
  minor=$(echo $build + 1 | bc)
elif [[ "$VERSION" == "major" ]]; then
  major=$(echo $major+1 | bc)
else
  echo "missing version parameter, try -v patch, minor, or major"
  exit -1
fi


NEW_VERSION="v${major}.${minor}.${patch}"
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