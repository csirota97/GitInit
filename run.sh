if [ -z $1 ]; then
    echo 'Provide project name'
    exit;
else
    localRepoName=$1
    localRepoName=${localRepoName// /_}
fi

if [ -z $2 ]; then
    remoteRepoName=$1
else
    remoteRepoName=$2
fi

if [ ${#GITUSER} -eq 0 ]; then
    echo 'NEED NAME'
    read -p "Enter Github Username: " GITUSER
else
    echo $GITUSER
fi

echo 'Initializing Project' $localRepoName

mkdir $localRepoName $localRepoName/src
cd $localRepoName
echo '#' $remoteRepoName > ./README.md
pwd
git init
git add README.md
git commit -m 'Initial Commit'
git remote add origin 'https://github.com/'$GITUSER'/'$remoteRepoName'.git'
git push -u origin master
