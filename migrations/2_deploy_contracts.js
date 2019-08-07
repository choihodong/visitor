const fs = require('fs')
const visit = artifacts.require('./visit.sol')
module.exports = function (deployer) {
 deployer.deploy(visit)
 .then(() => {
 if(visit._json) {
 fs.writeFile(
 'deployedABI', JSON.stringify(visit._json.abi),
 (err) => {
 if(err) throw err;
 console.log(' 파일에 ABI 입력 성공 ');
 }
 );
 fs.writeFile(
 'deployedAddress', visit.address,
 (err) => {
 if(err) throw err;
 console.log(' 파일에 주소 입력 성공 ');
 }
 );
 }
 });
}