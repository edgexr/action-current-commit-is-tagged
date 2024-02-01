# get current commit
current_commit=`git rev-parse HEAD`
echo "current commit is $current_commit"

# get tag for commit
tags=`git tag --contains $current_commit`
echo "tags for commit are $tags"

if [[ -n "$tags" ]]; then
    echo "current_commit_is_tagged=1" >> $GITHUB_OUTPUT
else
    echo "current_commit_is_tagged=0" >> $GITHUB_OUTPUT
fi
