#!/usr/bin/env bash
source .env && \
cast send \
    --rpc-url $RPC_URL \
    --private-key $PRIVATE_KEY \
    $TOKEN_APPROVE_ADDRESS "approve(address,uint256)(bool)" \
    $UNISWAP_ROUTER_CONTRACT_ADDRESS $1 && \
deactivate