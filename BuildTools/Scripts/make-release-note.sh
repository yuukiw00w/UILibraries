#!/bin/bash

# tag=$(git tag -l | tail -n 1)
branch='master'
git log --no-merges --pretty=oneline --abbrev-commit $branch..
