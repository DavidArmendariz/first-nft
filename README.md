# Contracts

In the folder `ethereum/` make sure to have the following `.env` file:

```txt
DEV_API_URL = ""
PRIVATE_KEY = ""
PUBLIC_KEY = ""
```

To compile the project:

```sh
npx hardhat compile
```

To deploy the smart contract run:

```sh
npx hardhat run scripts/deploy.js
```
