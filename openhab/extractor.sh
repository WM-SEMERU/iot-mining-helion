#!/bin/bash
find . -type f -name "*.java" ! -name '*test*' ! -path '*test*'  -exec grep -nH -e 'public.*(.*' -e 'private.*(.*' -e 'protected.*(.*'  -e '?!*.test.' {} \; > output.txt
find . -type f -name "*.java" -exec grep -nH "public.*test" {} \; > output.txt

find . -type f -name "*.js" -exec grep -l "test" {} \; > output.txt  
find . -type f -name "*.js" ! -name '*test*' ! -path '*test*' ! -path '*locale*' -exec grep -nH -e ': function'  -e '?!*.test.' {} \; > output.txt
find . -type f -name "*.java" -path '*test*' ! -path '*locale*' -exec grep -nH -e '*.public.*{' -e 'void' -e '?!.*class.*'  {} \; > output.txt