echo "******************************************************************"
echo "*********** Installing Rust and Solana latest release ************"
echo "******************************************************************"
echo ""
apt update && apt install curl git build-essential

sh -c "$(curl -sSfL https://release.solana.com/LATEST_RELEASE/install)"

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
echo "export PATH=\"/root/.local/share/solana/install/active_release/bin:$HOME/.cargo/bin:$PATH\"" > ~/solana_env
echo "export PATH=\"/root/.local/share/solana/install/active_release/bin:$HOME/.cargo/bin:$PATH\"" > ~/.profile
echo "export PATH=\"/root/.local/share/solana/install/active_release/bin:$HOME/.cargo/bin:$PATH\"" > ~/.bash_profile
echo "export PATH=\"/root/.local/share/solana/install/active_release/bin:$HOME/.cargo/bin:$PATH\"" > ~/.bashrc

echo "******************************************************************"
echo "****************** Set Environment Variables *********************"
echo "******************************************************************"
echo ""
echo "Run source  ~/solana_env"

echo "******************************************************************"
echo "************************** Next Steps ****************************"
echo "******************************************************************"
echo ""
echo "Run ./build_c_example.sh"
