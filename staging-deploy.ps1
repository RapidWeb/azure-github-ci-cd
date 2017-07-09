$branch=$args[0]
$repo = 'https://github.com/RapidWeb/azure-github-ci-cd.git'
$resourceGroup = 'ms-azure-github-dong'

az webapp deployment source delete --name ms-azure-github-dong --resource-group ms-azure-github-dong --slot staging
az webapp deployment source config --name ms-azure-github-dong --repo-url $repo --resource-group $resourceGroup --branch $branch --slot staging

# example 
# .\staging-deploy.ps1 "release/1.0.2"