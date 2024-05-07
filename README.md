### Deployment of UniswapRouter

-   To begin with, create a .env file in the root directory of the project and structure it as follows:

```
export RPC_URL=<your-rpc-url>
export PRIVATE_KEY=<your-private-key>
export UNISWAP_FACTORY_CONTRACT_ADDRESS=<uniswap-factory-contract-address>
export WETH_ADDRESS=<weth-address>
export UNISWAP_ROUTER_CONTRACT_ADDRESS=<uniswap-router-contract-address>
export TOKEN_APPROVE_ADDRESS=<token-approve-address>
export TOKEN_LIQUIDITY_ADDRESS_FIRST=<token-liquidity-address-first>
export TOKEN_LIQUIDITY_ADDRESS_SECOND=<token-liquidity-address-second>
export AMOUNT_FIRST_DESIRED=<amount-first-desired>
export AMOUNT_SECOND_DESIRED=<amount-second-desired>
export AMOUNT_FIRST_MIN=<amount-first-min>
export AMOUNT_SECOND_MIN=<amount-second-min>
export ADDRESS_TO=<address-to>
export SWAP_AMOUNY_IN=<swap-amount-in>
export SWAP_AMOUNY_IN_MIN=<swap-amount-in-min>
export SWAP_PATH_TOKEN_FIRST=<swap-path-token-first>
export SWAP_PATH_TOKEN_SECOND=<swap-path-token-second>
export SWAP_TO_ADDRESS=<swap-to-address>
```

-   To deploy the UniswapRouter contract, you need the UniswapFactory contract address and the WETH address (0xfFf9976782d46CC05630D1f6eBAb18b2324d6B14). After setting these, execute the following command:
```bash
./scripts/deploy.sh
```
Once the contract has been successfully deployed, you can proceed with the scripts to approve tokens, create liquidity, verify if the pair exists, and perform a swap.

-   Approve - execute the following command (amount to approve e.g. 10000000):
```bash
./scripts/approve.sh <amount-to-approve>
```
This command should be executed for each token for which you want to provide liquidity.

-   Liquidity - execute the following command:
```bash
./scripts/lq.sh <deadline>
```

You can calculate the deadline by following these steps (note that Node.js needs to be installed for this, but you can use any method you prefer):
```bash
node
Math.floor(Date.now() / 1000) + 200000
```

-   Get Pair - To verify if a pair exists after providing liquidity, execute the following command:
```bash
./scripts/getPair.sh
```

-   Swap - To perfrom a swap, execute the following command:
```bash
./scripts/swap.sh <deadline>
```

You can calculate the deadline as above.