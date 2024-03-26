// SPDX-License-Identifier: MIT LICENSE

pragma solidity 0.8.7;

contract BitCert {
    struct CertRcvr {
        string Student;
        string CertNum;
        string Crs;
        string Email;
    }
    mapping(address => CertRcvr) public College;

    function SaveCert(address wallet, string memory Student,
    string memory CertNum,
    string memory Crs,
    string memory Email) external {
        College[wallet].Student = Student;
        College[wallet].CertNum =CertNum;
        College[wallet].Crs = Crs;
        College[wallet].Email = Email;
    }
    function EditCert(address wallet, string memory Data,
    uint256 option) external {
       if (option == 0){
        College[wallet].Student = Data;
       }
       else if (option == 1) {
        College[wallet].CertNum = Data;
       }
       else if (option == 2) {
        College[wallet].Crs =  Data;
        }
       else if (option == 3) {
        College[wallet].Email = Data;
        }
    }
    
}
