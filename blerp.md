# ----- Notes to work on BEFORE real day -----
- how to set up LP for WBON on Mod [0.5B CULT &&  BONNFT WBON funds]
    >> - https://designingtokenomics.com/the-complete-tokenomics-course-primer/articles/liquidity-matters-how-to-setup-liquidity-for-a-token
    >> - https://support.uniswap.org/hc/en-us/articles/7423194619661-How-to-provide-liquidity-on-Uniswap-V3
- xxx
    >> - xxx


# ----- Notes to remember on REAL day -----

**0 PRE DEPLOYMENTS**:
- clean up airdrop list
    >> https://docs.google.com/spreadsheets/d/1utck9-9MXnCJFf329RT2UoMNhQqgVd2wXyJhJJnl7ZY/
- add the semi anons to BANK adlist;
- use ledger BON_DEPLYR for all things;
    >> 0x287B6551Ab70E38E4c1de44643340b56739ff306
- Bridge tokens
    >> 0x28.... 1B cult for LPs && ~$4k BON for WBON/CULT LP
    >> 0xc70... my personal BON to bridge (this is freedom fund wallet)

**1 STAKING DEPLOY**:
---------- add some way to drain all funds and then move them to the v2 staking and then use the reciept as a way to keep the ledger information and allow them to withdraw
- use WBON as address temporarily
- var: 604800 (7 days)
- var: 50 (5% of pool)

**2 WBON EXCHANGE DEPLOY**:
- Use WBON address and WBON address for now, and switch BANK later
- Use 2081376000 (66 years) for exchange timer
- 

**3 TOKEN DEPLOY**:
- string memory _name,      Bank of Nowhere
    string memory _symbol,  BANK
    address _treasury,      0xtemp-onLedgerMMSKForNow
    address _stakers,       0xtemp-onLedgerMMSKForNow
    address _devs,          0xtemp-onLedgerMMSKForNow
    uint _tax,              4
- 

**4 FINALIZATION**:
- need to send 10.5m BANK to exchange contract; then exchange MY WBON
- need to whitelist EXCHANGE and (STAKING?) and a TRADING wallet address on token contract
- send some BANK to stakingContract ASAP for rewardsCalc to work; and stake TWO wallets at least
- set staking status as TRUE

**5 BANK LP SETUP**:
- LP token split [0.5B CULT && 8.4M BANK]
- 

**6 WBANK EXCHANGE DEPLOY**:
- Use 2081376000 (66 years) for exchange timer
- 

**7 Update BONWORLD website**
- xx

**8 13 NFTs DEPLOY**
- contracts, art, ipfs, contracts


# ----- Other Notes -----

**TODOOO LATTEERRR**:
- todo ; use api3 air nodes qrnd on Modulus to make a simple scratcher card dapp that takes an upfront cost and uses probability into make sure that the house wins more----- or I can make a bet on the weather dApp that uses one source for distant weathwr predictions and then pay out based on the bet, people can bet to double their money and if it exists ij the pool then its sent but if they lose it just staysijn the pool AND BON makes money from a 4% tax on on and out
- WBANK LP on Polygon
- Do ALL dapps like betting on BOTH chains for BOTH BON and BANK




# **DEV NOTES**

- For forked testing: forge test --fork-url https://polygon-mainnet.g.alchemy.com/v2/elpiyNU3HOchYaeMMpCteXolAFqJYTEi -vvv
- For specific test names: forge test --match-contract <test contract name>- vvv
- xxxxxxxxxxxxxxx

# DEPLOY STUFF
1. create "deploy.sh" with this info:
    >> 
        #!/usr/bin/env bash

        # Read the RPC URL
        echo Enter Your RPC URL:
        echo Example: "https://eth-goerli.alchemyapi.io/v2//XXXXXXXXXX"
        read -s rpc

        # Read the contract name
        echo Which contract do you want to deploy \(eg Greeter\)?
        read contract

        forge create ./src/${contract}.sol:${contract} -i --rpc-url $rpc
2. in VSCode bash terminal, run "chmod u+x ./deploy.sh"
3. run by "./deploy.sh"
4. Paste Alchemy API info (you wont see it bc its hidden), then press enter
5. Paste contract info (like "QuizFactory"), then enter
6. Paste private key, then enter
7. Wait for the transaction to go through
    
# OTHER UNORGANIZED NOTES
>> 
    # powershell steps
    1) open empty folder in powershell (not in VS or github)
    2) 'forge init'
    3) 'forge build'
    4) 'forge test'
    5) 'anvil'
    6) 'forge script script/HelloWorld.s.sol:ContractScript --fork-url http://localhost:8545 \ --private-key $PRIVATE_KEY --broadcast'
    7) to READ functions: 'cast call $CONTRACT_ADDRESS "greet()(string)"'
    8) to WRITE functions: 'cast send $CONTRACT_ADDRESS "updateGreeting(string)" "My new greeting" --private-key $PRIVATE_KEY'

    # install libraries
    0) install git stuff: 'git init' AND/OR 'git add .' OR update in the APP
    1) install packages: 'forge install OpenZeppelin/openzeppelin-contracts'
    2) remap stuff: CREATE 'remappings.txt' & WRITE '@openzeppelin/=lib/openzeppelin-contracts/'
    3) helpful: forge install motdotla/dotenv
    4) to update foundry stuff: "cargo install --git https://github.com/foundry-rs/foundry foundry-cli anvil chisel"

    # important links
    - info on testing 'assertions': 
        - https://book.getfoundry.sh/reference/ds-test#asserting
    - logging like console.log:
        - 'forge test -vv' (more v's more logs)
        - https://book.getfoundry.sh/reference/ds-test#logging
    - deploy script is needed
        - 

    # Testing
    - see for a short list of VM commands: https://book.getfoundry.sh/reference/forge-std/std-cheats
    - see for a longer list of cheat commands: https://book.getfoundry.sh/cheatcodes/
    - 

    $TESTING_PRIVATE_KEY
    $TESTING_SEPOLIA_RPC_URL


    forge create NFT --rpc-url=$TESTING_SEPOLIA_RPC_URL --private-key=$TESTING_PRIVATE_KEY --constructor-args foundryTestNFTs FT

    forge script script/NFT.s.sol:MyScript --rpc-url sepolia --broadcast --verify -vvvv

    forge script script/NFT.s.sol:MyScript --fork-url anvil --broadcast
