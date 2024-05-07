#!/usr/bin/env bash
source .env && \
forge create \
    --rpc-url $RPC_URL \
    --private-key $PRIVATE_KEY \
    src/UniswapRouter.sol:UniswapV2Router02 \
    --constructor-args $UNISWAP_FACTORY_CONTRACT_ADDRESS \
    $WETH_ADDRESS && \
deactivate