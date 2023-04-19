if [ -z $1 ]; then
    echo 'Provide project name'
    exit;
fi
if [ ${#GITUSER} -eq 0 ]; then
    echo 'Missing Github Username!'
    read -p "Enter Github Username: " GITUSER
else
    echo $GITUSER
fi

echo 'Initializing Project' $1
string=$1
string=${string// /_}

mkdir $string $string/src
echo '#' $1 > $string/README.md
cd $string
pwd
git init
git add README.md
git commit -m 'Initial Commit'
git remote add origin 'https://github.com/'$GITUSER'/'$string'.git'
git push -u origin master
