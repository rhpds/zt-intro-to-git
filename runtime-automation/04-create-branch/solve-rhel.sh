#!/bin/sh
git branch experimental_change
git checkout experimental_change
#adds some text to the end of sample.txt
tee -a sample.txt << EOF
This is some addtional sample text. It is appended to the original sample.txt file.
EOF

#deletes helloworld.cpp
rm helloworld.cpp

#removes "World" from the output of helloworld.py and replaces it with "user"
sed -i 's/World/user/' helloworld.py
git commit -am "made random changes to all files"
echo "Solved module called 04-create-branch" >> /tmp/progress.log