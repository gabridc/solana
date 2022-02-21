################################################################################
# Help                                                                         #
################################################################################
Help()
{
   # Display Help
   echo "Create Wallets script"
   echo
   echo "Syntax: create_wallet.sh <destination_keyfile>.json <destination_passphrase_file>.txt"
   echo "Example: create_wallet.sh wallet.json wallet_passphrase.txt"
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


if (( $# < 2 )); then
Help
else
solana-keygen new --outfile $1
solana-keygen pubkey $1 | awk -Fpubkey: '{printf $1}' > $2
echo ""
fi