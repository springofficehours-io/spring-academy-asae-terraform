## Spring Academy ASAE Terraform
#### Use Azure Spring Apps Enterprise to deploy your Spring Academy guides and labs

### Prerequisites

- [Install Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
- [Install Terraform CLI](https://developer.hashicorp.com/terraform/downloads)

### Quick Start

```bash
az login --use-device-code
```
> Authenticate with Azure

```bash
git clone git@github.com:springofficehours-io/spring-academy-asae-terraform.git
cd spring-academy-asae-terraform
```
> Clone the repository

```bash
terraform init -upgrade
```
> Initialize the workspace with providers

```bash
terraform apply -auto-approve
```
> This can take several minutes

## Next Steps

After the `apply` step is complete, you should see something similar to this, on the console:

```text
Apply complete! Resources: 10 added, 0 changed, 0 destroyed.

Outputs:

build_deploy = "az spring app deploy -g spring-academy-vgfq -s spring-academy-vgfq -n bootiful --build-env BP_JVM_VERSION=17 --source-path"
list_apps = "az spring app list --output table -g spring-academy-vgfq -s spring-academy-vgfq"
logs = "az spring app logs -n bootiful -s spring-academy-vgfq -g spring-academy-vgfq --lines 1000"
resource_group_name = "spring-academy-vgfq"
```
> The output contains some useful commands that you can use later

A simple application has been deployed for you.  Use this command to list the apps in this instance:
```bash
az spring app list --output table -g spring-academy-vgfq -s spring-academy-vgfq
```
> This command was generated in the `outputs` above, copy and paste your values
> Type 'Y' if you are asked to install the Spring Extension

## Summary

You now have an ASAE instance that you can use with [Spring Academy](https://spring.academy)

## Keep Learning

- [Spring Academy](https://spring.academy)
- [Spring Office Hours](https://springofficehours.io)
- [Spring Academy guide deployed to ASAE]()