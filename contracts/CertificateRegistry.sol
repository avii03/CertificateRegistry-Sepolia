// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CertificateRegistry {
    struct Certificate {
        string studentName;
        string courseName;
        uint256 issueDate;
        bool isValid;
        address issuer;
    }

    mapping(string => Certificate) public certificates;

    event CertificateRegistered(string certificateId, string studentName, string courseName, uint256 issueDate);
    event CertificateRevoked(string certificateId, string studentName);

    function registerCertificate(string memory _certificateId, string memory _studentName, string memory _courseName) public {
        require(certificates[_certificateId].issuer == address(0), "Certificate already exists");

        certificates[_certificateId] = Certificate({
            studentName: _studentName,
            courseName: _courseName,
            issueDate: block.timestamp,
            isValid: true,
            issuer: msg.sender
        });

        emit CertificateRegistered(_certificateId, _studentName, _courseName, block.timestamp);
    }

    function verifyCertificate(string memory _certificateId) public view returns (string memory, string memory, uint256, bool) {
        Certificate memory cert = certificates[_certificateId];
        require(cert.issuer != address(0), "Certificate does not exist");
        return (cert.studentName, cert.courseName, cert.issueDate, cert.isValid);
    }

    function revokeCertificate(string memory _certificateId) public {
        Certificate storage cert = certificates[_certificateId];
        require(cert.issuer == msg.sender, "Only the issuer can revoke this certificate");
        require(cert.isValid, "Certificate already revoked");
        cert.isValid = false;
        emit CertificateRevoked(_certificateId, cert.studentName);
    }
}

