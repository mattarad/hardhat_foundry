# hardhat foundry

## Environment for testing hardhat and foundry.

###### In this repo, we are testing contracts using hardhat and foundry.

**to setup a hardhat and foundry project:**
1. Set up Hardhat
    - initailize node project
```shell
npm init -y
```
    - set up hardhat
```shell
npm install --save-dev hardhat
```
    - initialize hardhat
```shell
npx hardhat init
```

2. Verify git and forge
    - initialize git if you haven't
        *foundry relies on git*
        **if unsure about this step, please look more into -  you may have already cloned a repo or done something similar...**

```shell
git init
```
    - check forge version

```shell
forge --version
```

3. install *@nomicfoundation/hardhat-foundry*
```shell
npm install --save-dev @nomicfoundation/hardhat-foundry
```

4. import it into your Hardhat config
```javascript
require("@nomicfoundation/hardhat-foundry");
```

5. Initialize Forge
```javascript
npx hardhat init-foundry
```
