#!/bin/bash
tasks=$1
path=$2
name=$3
case $tasks in
"addDir")
if [ ! -d "$path/$name" ]; then
      mkdir -p $path/$name
      echo "Directory created at $path name of the derectory $name"
elif [ -d $path/$name ]; then    
     echo "directory already exist"   
fi
;;
"listFiles")
        ls -la $path | grep "^-"
        echo "Listed ony files from diretory $path"
        ;;
"listDirs")
        ls -la $path | grep "^d"
        echo "Listed ony files from diretory $path"
        ;;
"listAll")
        ls -la $path
        echo "Command at $path Executed for all"
        ;;
"deleteDir")
if [ -d "$path/$name" ]; then
                rm -rvf $path/$name
                     echo "Directory deleted from $path ,and name of the directory deleted $name"
elif [ ! -d "$path/$name" ]; then
                rm -rvf $path/$name
                     echo "already deleted from $path "                
fi
        ;;
"addFile")
if [ ! -f "$path/$name" ]; then
        touch $path/$name
        echo "File created at $path name of the file is $name"
elif [ -f $path/$name ]; then
        echo "$4" > "$path"/"$name"
        echo "file already created"
fi
;;
"addContentToFile")
        echo "$4" >> "$path"/"$name"
        echo "content added successfully"
;;
"addContentToFileBegining")
        content=$(
                echo "$4"
                cat "$path"/"$name"
        )
        echo "${content}" >"$path"/"$name"
        echo "content added to file begining successfully"
        ;;
"showFileBeginingContent")
        head -n $4 $path/$name
        echo "content shown successfully of begining"
;;
"showFileEndContent")
        tail -n $4 $path/$name
        echo "content shown successfully of end"
        ;;
"showFileContentAtLine")
        head -n $4 $path/$name | tail +$4
        echo "content shown successfully at line"
        ;;
"showFileContentForLineRange")
        head -n $5 $path/$name | tail +$4
        echo "content shown successfully from line $5 to $4"
        ;;
"moveFile")
        sudo mv $path $name
        echo "file moved successfully "
        ;;
"copyFile")
        sudo cp $path $name
        echo "file copied "
        ;;
"clearFileContent")
        echo ' ' >"$path"/"$name"
        echo "file content removed"
        ;;
"deleteFile")
if [ -f "$path/$name" ]; then
                rm -rvf $path/$name
                     echo "File deleted from $path ,and name of the file deleted $name"
elif [ ! -f "$path/$name" ]; then
                rm -rvf $path/$name
                     echo "already deleted from $path "                
fi
        ;;
"$1")
        echo "please provide valid input"
        ;;
esac

..





