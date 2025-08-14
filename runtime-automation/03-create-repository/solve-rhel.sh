#!/bin/sh
mkdir /home/my-repo #makes a directory within the home folder for your Git repository
cd /home/my-repo #changes the working directory to your Git repository
git init #creates a Git repository in the working directory
tee helloworld.cpp << EOF
#include <iostream>
using namespace std;
int main() {
   cout << "Hello World!" << endl;
   return 0;
}
EOF

tee helloworld.py << EOF
print("Hello World!")
EOF

tee sample.txt << EOF
Hello! This is some sample text for your Git repository:

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse laoreet placerat metus vitae pulvinar. Sed dictum dui ut metus vulputate scelerisque. Morbi molestie sem augue, at varius elit volutpat eu. Nulla eget lectus ac metus pretium molestie. Proin in dolor a arcu gravida viverra. Suspendisse gravida viverra odio, non consectetur nisi efficitur in. Pellentesque placerat tortor libero, vitae placerat nulla dignissim quis. Suspendisse ut dui quam. Nullam nec diam elit.
EOF
git add helloworld.cpp
git add helloworld.py
git add sample.txt
git commit -am "added helloworld.cpp, helloworld.py, and sample.txt"
echo "Solved module called 03-create-repository" >> /tmp/progress.log