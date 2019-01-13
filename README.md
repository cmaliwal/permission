#### Permission contract

## To run the test :

>>> truffle test


## Rinkeby contract address :

>>> https://rinkeby.etherscan.io/address/0x1e84e704fd2b0f4175c77c8e79058ffc482fe21f

Note : Code is verified in etherscan :

>>> https://rinkeby.etherscan.io/address/0x1e84e704fd2b0f4175c77c8e79058ffc482fe21f#code


================================


### Tools/Lib :

1. Ethlint : Linter to identify and fix style & security issues in Solidity

>>> npm install -g ethlint

>>> solium -f Permissions.sol
>>> solium -d contracts/ 


2. solidity-coverage : Code coverage for Solidity testing

>>> ./node_modules/.bin/solidity-coverage

3. ESLint : For identifying and reporting on patterns found in ECMAScript/JavaScript code.

>>> npm install -g eslint

>>> eslint test/Permissions.js