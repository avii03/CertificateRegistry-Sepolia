require("@nomicfoundation/hardhat-toolbox");

const ALCHEMY_API_KEY = "bdG02b5oMIO7cvuWah5nJ"; 
const METAMASK_PRIVATE_KEY = "0087e563f1eb1d628c605e404ea0b30b775e15b0fb5237b07d6b206e80f5a579";

module.exports = {
  solidity: "0.8.19",
  networks: {
    sepolia: {
      url: `https://eth-sepolia.g.alchemy.com/v2/bdG02b5oMlO7cvuWah5nJ`,
      accounts: [METAMASK_PRIVATE_KEY],
    },
  },
};

