echo 'Usage => tag=v1.0.0-pr-07012020-1 changes="new features" ./createprtag.sh'
echo 'Note: Tag will be created from master branch. This is ideal for planned releases with new features or bug fixes.'

: ${tag?"Please specify Tag Name in this format ( vX.X.X-pr-MMDDYYYY-N )"}
: ${changes?"Please specify features or changes as part of this release"}

git config --global user.email "bmohammad@evoketechnologies.com"
git config --global user.name "mdbadiyuzamaevoke"


pwd
ls -l
git branch

echo 'Tag Name: '${tag}
echo 'Changes: '${changes}

git tag -a ${tag} -m ${changes} origin/master
git tag

git push origin ${tag}

echo ${tag}' successfully created!'