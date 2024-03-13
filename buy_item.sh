APPNAME="store_2462213065"

ENV_FILE=".env"
PRIVATE_KEY=$(grep "PRIVATE_KEY" $ENV_FILE | cut -d '=' -f2)

TOKEN="'{ 
    owner: aleo193snwc6vm4gt9kv406gfu7aa8htxxs89xc9twqcg2nu7rq2crcxskh4el9.private,
    amount: 10000u64.private,
    _nonce: 6454746015393505811671401129091330549036205015618570235834391641324347085342group.public 
}'"

snarkos developer execute "${APPNAME}.aleo" buy \
  TOKEN \
  1u8 \
  5u64 \
  500u64 \
  --private-key "${PRIVATE_KEY}" \
  --query "https://api.explorer.aleo.org/v1" \
  --priority-fee 3000000 \
  --broadcast "https://api.explorer.aleo.org/v1/testnet3/transaction/broadcast" \