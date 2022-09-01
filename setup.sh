# https://github.com/chaseoli/secrets-store-csi-with-aks-akv
export RESOURCEGROUPNAME="csi-aks-example"
export LOCATION="eastus"
export SUBSCRIPTIONID=$ARM_SUBSCRIPTION_ID
export SERVICEPRINCIPALNAME="csi-aks-sp"

# # Create resource group
az group create --name $RESOURCEGROUPNAME --location $LOCATION --subscription $SUBSCRIPTIONID

# # Create a service principal with Contributor role to the resource group
az ad sp create-for-rbac --name $SERVICEPRINCIPALNAME --role Contributor --scopes /subscriptions/$SUBSCRIPTIONID/resourceGroups/$RESOURCEGROUPNAME --sdk-auth