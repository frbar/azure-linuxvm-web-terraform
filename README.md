# Purpose

WIP - Linux VM with self-signed certificate (KV) and DNS in Cloudflare.
# PowerShell script (Windows)

```powershell
az login

$subscription = "My Subscription"
az account set --subscription $subscription

# Configuration

$rgName = "frbar-linux-web"
$envName = "fbvm1" # lowercase, only a-z and 0-9
$location = "West Europe"

$env:CLOUDFLARE_API_TOKEN = "xxx"
$env:CF_ZONE_ID           = "xxx"
$env:CF_DOMAIN            = "mydomain.com"

# Infrastructure provisioning

./terraform.exe -chdir=tf init
./terraform.exe -chdir=tf apply -var "rg_name=$($rgName)" `
                                -var "env_name=$($envName)" `
                                -var "location=$($location)" `
                                -var "cf_zone_id=$($env:CF_ZONE_ID)" `
                                -var "cf_domain=$($env:CF_DOMAIN)" `
                                -auto-approve

```

# Tear down

```powershell
./terraform.exe -chdir=tf apply -destroy `
                                -var "rg_name=$($rgName)" `
                                -var "env_name=$($envName)" `
                                -var "location=$($location)" `
                                -var "cf_api_token=$($env:CF_API_TOKEN)" `
                                -var "cf_domain=$($env:CF_DOMAIN)"
```