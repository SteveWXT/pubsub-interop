sudo rm -rf organizations/peerOrganizations
sudo rm -rf organizations/ordererOrganizations
sudo rm -rf organizations/fabric-ca/ordererOrg
sudo rm -rf organizations/fabric-ca/org1
sudo rm -rf organizations/fabric-ca/org2
sudo rm -rf system-genesis-block
sudo rm -rf channel-artifacts
sudo rm -rf ./*.tar.gz
docker rm -f $(docker ps -a | grep "hyperledger/*" | awk "{print \$1}")
docker volume prune

