################################################################################
# Help                                                                         #
################################################################################
Help()
{
   # Display Help
   echo "Transfer SOL"
   echo
   echo "Syntax: transfer.sh <source_keyfile>.json <destination_passphrase_file>.txt <sol_amount>"
   echo "Example: transfer.sh source_wallet.json destination_wallet_passphrase.txt 1"
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


if (( $# < 3 )); then
Help
else
fromKey=$1 # Key File wallet.json
recipientAddress=$(cat $2) #Passphrase string
solana transfer --from ${fromKey} ${recipientAddress} $3 --allow-unfunded-recipient --url https://api.devnet.solana.com --fee-payer ${fromKey}
solana balance ${recipientAddress} --url http://api.devnet.solana.com
fi