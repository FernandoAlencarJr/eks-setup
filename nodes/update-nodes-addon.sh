aws eks update-addon \
  --cluster-name MyEksCluster \
  --addon-name vpc-cni \
  --service-account-role-arn arn:aws:iam::485547149447:role/myAmazonEKSCNIRole 