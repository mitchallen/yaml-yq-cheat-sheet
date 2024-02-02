#!/bin/bash

echo " " && echo "keys: "

cat << EOF | yq 'keys' 
alpha: 100
beta: 200
gamma: 300
EOF

echo " " && echo "first key "

cat << EOF | yq 'keys | .[0]' 
alpha: 100
beta: 200
gamma: 300
EOF


echo " " && echo "last key: "

cat << EOF | yq 'keys | .[-1]' 
alpha: 100
beta: 200
gamma: 300
EOF


# end
echo " "