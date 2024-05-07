#!/usr/bin/env bash
source .env && \
cast send \
    --rpc-url $RPC_URL \
    --private-key $PRIVATE_KEY \
    $UNISWAP_ROUTER_CONTRACT_ADDRESS \
    "addLiquidity(address,address,uint,uint,uint,uint,address,uint)(uint,uint,uint)" \
    $TOKEN_LIQUIDITY_ADDRESS_FIRST \
    $TOKEN_LIQUIDITY_ADDRESS_SECOND \
    $AMOUNT_FIRST_DESIRED $AMOUNT_SECOND_DESIRED \
    $AMOUNT_FIRST_MIN $AMOUNT_SECOND_MIN \
    $ADDRESS_TO $1 && \
deactivate
    