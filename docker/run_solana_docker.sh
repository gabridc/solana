
if [[ ! -d ../examples ]] 
then
mkdir ../examples
cd ../examples
git clone https://github.com/solana-labs/example-helloworld.git
fi

cd ../
sudo docker run --mount type=bind,source=${PWD},target=/solana-files -i -t solana-hello-deployed /bin/bash