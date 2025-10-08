# CertificateRegistry – Blockchain-based Academic Certificate Verification System

This project implements a blockchain-based academic certificate verification system using Solidity, Hardhat, and Alchemy, deployed on the Ethereum Sepolia Testnet.

---

## Overview
Traditional certificate systems rely on centralized databases and manual verification processes, which are vulnerable to forgery and manipulation.  
This smart contract allows universities to issue, revoke, and verify academic certificates securely and transparently on the blockchain.

---

## Tech Stack
- Solidity `v0.8.19`
- Hardhat Framework
- Alchemy (Sepolia RPC Node)
- MetaMask Wallet
- Ethereum Sepolia Testnet

---

## Smart Contract
- **Deployed Contract Address:** `0xf87a781df01Da3e8B32de2FEa11b1a3C1fC3A7a4`
- **Network:** Ethereum Sepolia  
- **Verified on:** [Sepolia Etherscan](https://sepolia.etherscan.io/address/0xf87a781df01Da3e8B32de2FEa11b1a3C1fC3A7a4)

---

## Deployment Steps
1. Configure Hardhat with your Alchemy API key and MetaMask private key in `hardhat.config.js`.
2. Compile your contract:
   ```bash
   npx hardhat compile
   ```
3. Deploy to Sepolia:
   ```bash
   npx hardhat run scripts/deploy.js --network sepolia
   ```
4. Verify on Etherscan:
   ```bash
   npx hardhat verify --network sepolia <contract_address>
   ```

---

## Author
**Suhansa Avindi**  
Bachelor of Information Technology (Artificial Intelligence Major)  
GitHub: [avii03](https://github.com/avii03)

---

## License
MIT License – feel free to fork and build on this project.

```

