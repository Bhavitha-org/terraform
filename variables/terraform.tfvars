instance_type = "t3.small"
sg_name = "allow-all-terraform-tfvars"



#ways to pass variables:
#1. default values inside variables.tf
#2. terraform.tfvars
#3. command line 
#4. environment variables (set TF_VAR_sg_name="allow-all-terraform-env")

#variable precedence order:

# command line > 





