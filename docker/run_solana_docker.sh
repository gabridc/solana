REPOSITORY_PATH="/home/gabridc/Repositorio/solana/"

if [[ ! -d ../examples ]] 
then
mkdir ../examples
cd ../examples
git clone https://github.com/solana-labs/example-helloworld.git
fi

cd ../
sudo docker run --name solana-deployed --mount type=bind,source=${REPOSITORY_PATH},target=/root/solana-repo -i -t solana-hello-deployed /bin/bash