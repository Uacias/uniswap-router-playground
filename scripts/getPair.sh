#!/usr/bin/env bash
source .env && \
cast call \
    --rpc-url $RPC_URL \
    $UNISWAP_FACTORY_CONTRACT_ADDRESS \
    "getPair(address,address)(address)" \
    $TOKEN_LIQUIDITY_ADDRESS_FIRST $TOKEN_LIQUIDITY_ADDRESS_SECOND && \
deactivate 
    
