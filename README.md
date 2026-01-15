# Tokens & Smart Contracts

A collection of Ethereum smart contract implementations demonstrating core blockchain development concepts, including ERC-20 token standards, contract interactions, and security considerations.

## Project Overview

This repository contains two comprehensive smart contract projects developed as part of a cryptocurrency and blockchain course. The projects showcase hands-on experience with Solidity development, Web3 integration, and smart contract testing.

### Key Skills Demonstrated

- **Solidity Development**: Writing secure, gas-efficient smart contracts
- **ERC-20 Token Standard**: Full implementation of the ERC-20 interface with custom functionality
- **Smart Contract Testing**: Comprehensive test suites using Python and Web3.py
- **Contract Interactions**: Inter-contract communication and interface usage
- **Security Best Practices**: Safe Ether transfers, reentrancy protection, and proper error handling
- **Blockchain Development Tools**: Solidity compiler, Web3.py, eth-tester, and local blockchain testing

## Project Structure

```
Tokens_SmartContracts/
├── p1_erc20_token/             # Part 1: ERC-20 Token Implementation
│   ├── ERC20.sol               # Custom ERC-20 token with deposit/withdraw functionality
│   ├── run_tests.py            # Comprehensive test suite (Python/Web3)
│   ├── requirements.txt        # Python dependencies
│   ├── README.md               # Project-specific setup instructions
│   └── ERC20_addr.txt          # Deployed contract address
│
├── p2_battle_challenge/        # Part 2: Smart Contract Challenge
│   ├── EthermonLite.sol        # Monster battle game contract
│   ├── WinBattle.sol           # Exploit contract demonstrating contract interaction
│   └── WinBattle_ addr.txt     # Deployed contract address with exploit
│
└── env/                         # Python virtual environment
```

## Project Parts

### Part 1: ERC-20 Token with Wrapped Ether Functionality

**Location**: `p1_erc20_token/`

A fully functional ERC-20 token implementation that extends the standard with deposit and withdraw capabilities, similar to Wrapped Ether (WETH). Users can deposit Ether to mint tokens and withdraw tokens to receive Ether back.

#### Features

- **Full ERC-20 Compliance**: Implements all standard ERC-20 functions (`transfer`, `transferFrom`, `approve`, `allowance`, `balanceOf`, `totalSupply`)
- **Deposit Functionality**: Users can send Ether to mint tokens at a 1:1000 ratio (1 ETH = 1000 tokens)
- **Withdraw Functionality**: Users can burn tokens to receive Ether back
- **Comprehensive Testing**: Extensive test suite covering:
  - Initial state validation
  - Deposit and withdraw operations
  - Token transfers and approvals
  - Edge cases and error handling
  - Event emission verification
  - Reentrancy protection

#### Technical Highlights

- Safe Ether transfers using `call()` with proper error handling
- Proper state management and balance tracking
- Event emission for all state-changing operations
- Gas-efficient implementation

### Part 2: Smart Contract Interaction Challenge

**Location**: `p2_battle_challenge/`

A challenge project demonstrating advanced smart contract interactions. The project includes a game contract (`EthermonLite`) where players battle monsters, and an exploit contract (`WinBattle`) that demonstrates understanding of contract interfaces, block hash manipulation, and strategic contract interactions.

#### Components

- **EthermonLite.sol**: A monster battle game where players can:
  - Initialize their monster
  - Battle against an Ogre opponent
  - Track wins and losses
  - Customize monster names and titles

- **WinBattle.sol**: An exploit contract that:
  - Interfaces with the game contract
  - Manipulates battle outcomes through strategic name changes
  - Demonstrates understanding of block hash usage and contract state

- **WinBattle_addr.txt**: https://eth-holesky.blockscout.com/address/0x030aF9f96B15ebaB7F338AA26472A7f4F4a02804?tab=index

#### Technical Highlights

- Interface-based contract communication
- Block hash and cryptographic hash manipulation
- String manipulation utilities
- Strategic contract interaction patterns

## Technologies Used

- **Solidity** ^0.8.0 - Smart contract programming language
- **Web3.py** 6.15.1 - Python library for Ethereum interaction
- **eth-tester** 0.9.1b2 - Ethereum testing framework
- **Python** 3.8+ - Testing and automation

## Learning Outcomes

This project demonstrates proficiency in:

1. **Smart Contract Development**: Writing production-ready Solidity code
2. **Token Standards**: Deep understanding of ERC-20 token standard
3. **Testing**: Comprehensive test-driven development for blockchain applications
4. **Security**: Understanding common vulnerabilities and best practices
5. **Blockchain Integration**: Using Web3 libraries for contract interaction
6. **Problem Solving**: Analyzing contract logic and developing strategic solutions

---

## ** NOTE: Tests may be difficult to run on Windows system. You can instead test by deploying your contract to a testnet and interacting with it. See the pdf for details. **

## Installing and Running Locally

You MUST have Python>=3.8 installed and solc>=0.8.x.

Several options to install solidity are given here: http://solidity.readthedocs.io/en/develop/installing-solidity.html. At the end, `solc --version` should give you a good output.

After correctly impementing the withdraw function, all tests in the file `run_tests.py` should pass.

### Linux users

Note: Tested with python3.10 on a Linux machine.

1. Create and activate a virtual environment with python3.10
2. `pip install eth_tester web3[tester]`

You should now be able to run tests with `python run_tests.py`.

### Mac users

Install ethereum with pip:

```
  pip3 install eth_tester web3
  pip3 install py-evm
  brew tap ethereum/ethereum
  brew install ethereum
```

### Windows Users:

Microsoft Visual C++ 14.0 or greater is required
Follow https://geth.ethereum.org/docs/install-and-build/installing-geth

```
  python -m pip install eth_tester web3
```

Then, run tests with run_tests.py


**Note**: This project was developed as part of a cryptocurrency and blockchain course, demonstrating practical experience with Ethereum smart contract development.
