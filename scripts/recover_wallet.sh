################################################################################
# Help                                                                         #
################################################################################
Help()
{
   # Display Help
   echo "Create Wallets script"
   echo
   echo "Syntax: create_wallet.sh <key_pair_file>.json <pubkey_file>.txt"
   echo "Example: create_wallet.sh wallet_keys.json wallet_pub.txt"
   echo "Note BIP-39: By default, solana create a BIP-39 seed but it is possible to use a custom BIP-39"
   echo "   to generate a custom BIP-39 based on a list of word use the online tool: https://iancoleman.io/bip39/"
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

if [[ ! -d $HOME/wallets ]]
then
mkdir $HOME/wallets
fi
solana-keygen new --outfile $HOME/wallets/$1
solana-keygen pubkey $HOME/wallets/$1 | awk -Fpubkey: '{printf $1}' > $HOME/wallets/$2
echo ""
fi