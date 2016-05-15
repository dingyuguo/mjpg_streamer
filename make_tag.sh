#########################################################################
# File Name: make_tag.sh
# Author: laoding
# mail: dyg1993@foxmail.com
# Created Time: Fri 13 May 2016 12:09:17 PM CST
#########################################################################
#!/bin/bash
currentPath=$(pwd | sed 's$\/$\\\/$g')
echo $currentPath


find  . -prune -o -name "*.h"-o -name "*.c"-o -name "*.cc"-o -name "*.cpp"| sed "s/^\./$currentPath/"> cscope.files
cscope -bkq -i cscope.files
ctags -R

