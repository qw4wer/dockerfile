#! /bin/bash 



#分割参数

processing(){
while getopts "p:u:d:b:" arg #选项后面的冒号表示该选项需要参数
do
    case $arg in
         p)
			projectName=$OPTARG
            echo $projectName #参数存在$OPTARG中
            ;;
         u)
			url=$OPTARG
            echo "url is $OPTARG"
            ;;
         d)
			path=$OPTARG
            echo "path is $path"
            ;;
         b)
         	basePath=$OPTARG
			echo "basePath is $basePath"
			;;
         ?) #当有不认识的选项的时候arg为?
        	echo "unkonw argument"
    		exit 1
    		;;
    esac
done

if [ $basePath == '' ]
then
echo "basePath is null ,set to /tmp"
fi

if [ $projectName == '' ] || [ $url == '' ]
then
getHelp
exit 1

fi

#新建项目目录
mkdir -p $basePath/$projectName

cd $basePath/$projectName

git init

git config core.sparseCheckout true

echo $path > .git/info/sparse-checkout

git remote add origin $url

git pull origin master
}

getHelp(){
	echo "use -p -u -d -b"
}


if [ x$1 != x ] 
then
	processing $*
else
	getHelp
fi