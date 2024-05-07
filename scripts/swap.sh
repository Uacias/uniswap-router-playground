#!/usr/bin/env bash
source .env && \
cast send \
    --rpc-url $RPC_URL \
    --private-key $PRIVATE_KEY \
    $UNISWAP_ROUTER_CONTRACT_ADDRESS \
    "swapExactTokensForTokens(uint,uint,address[],address,uint)(uint[])" \
    $SWAP_AMOUNT_IN $SWAP_AMOUNY_IN_MIN "[$SWAP_PATH_TOKEN_FIRST,$SWAP_PATH_TOKEN_SECOND]" \
    $SWAP_TO_ADDRESS $1 && \
deactivate
