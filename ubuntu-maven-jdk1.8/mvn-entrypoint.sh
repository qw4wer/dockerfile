#! /bin/bash 
IFS="|"
processing(){
  while getopts "b:m::" arg
    do
      case $arg in
           b)
            basePath=$OPTARG
            echo "basePath is $basePath"
            ;;
           m)
            commands=$OPTARG
            echo "commands is $commands"
            ;; 
           ?) #当有不认识的选项的时候arg为?
            echo "unkonw argument"
            exit 1
          ;;
      esac
    done

  cd $basePath
  eval "mvn $commands"

}

getHelp(){
  echo "use -b -m"
}

if [ x$1 != x ] 
then
  processing $*
else
  getHelp
fi