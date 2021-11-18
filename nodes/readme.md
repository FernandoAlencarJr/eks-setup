cni-role-trust-policy.json

- Replace <111122223333> (including <>) with your account ID and replace <XXXXXXXXXX45D83924220DC4815XXXXX> with the value after the last /

create-managed-nodes.sh

- Create an IAM role for the Amazon VPC CNI plugin.

attach-nodes-in-eks.sh

- Append the Amazon EKS Managed IAM Policy to the role.

update-nodes-addon.sh

- Associate the Kubernetes service account used by the VPC CNI plugin to the IAM role. Replace <111122223333> (including <>) with your account ID.

node-role-trust-policy.json

- Create a node's IAM role and associate the Amazon EKS IAM Managed Policy with it. The Amazon EKS node kubelet daemon calls the AWS APIs on its behalf. Nodes are granted permissions to these API calls through an IAM instance profile and associated policies.

create-nodes-role.sh

- Create the IAM role for the node.

attach-nodes-role.sh

- Attach the Amazon EKS Managed IAM policies required for the role.

next process

Open the Amazon EKS console at https://console.aws.amazon.com/eks/home#/clusters.
Choose the cluster name you created in Step 1: Create the Amazon EKS cluster, for example my-cluster.
Select the Configuration tab.
On the cluster page, select the Configuration tab, select the Compute tab and choose Add Node Group.
On the Configure Node Group page, fill in the parameters accordingly, accept the remaining default values, and choose Next.
Name - Enter a unique name for the managed node group, such as my-nodegroup.
IAM Node Role Name: Choose myAmazonEKSNodeRole. In this getting started guide, this function should only be used for that group of nodes and no other group of nodes.
On the Configure Compute and Scale Configuration page, accept the default values ​​and select Next.
On the Specify Network page, select an existing key pair to use in the SSH key pair and choose Next. If you don't already have a keypair, you can create one using the following command. If necessary, change us-west-2 to the region where you created the cluster. Save the returned result to a file on your local computer. For information, see Creating or Importing a Key Pair in the Amazon EC2 User Manual for Linux Instances. Although the key is not required in this manual, you can only specify one key to be used when creating the node group. Specifying the key allows you to SSH the node after it has been created.
