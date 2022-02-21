################################################################################
# Help                                                                         #
################################################################################
Help()
{
   # Display Help
   echo "Add SOL to an account"
   echo
   echo "Syntax: transfer.sh <destination_passphrase_file>.txt"
   echo "Example: transfer.sh destination_wallet_passphrase.txt"
   echo ""
   echo "options:"
   echo "h     Print this Help."
   echo
}


while getopts ":h" option; do
   case $option in
      h) # display Help
         Help
         exit;;
   esac
done


if (( $# < 1 )); then
Help
else
walletAddress=$(cat $1)
solana airdrop 1 ${walletAddress} --url https://api.devnet.solana.com
fi