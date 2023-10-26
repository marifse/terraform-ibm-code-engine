package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
)

func TestAccIBMISVPCE2E(t *testing.T) {
	t.Parallel()

	// Construct the terraform options with default retryable errors to handle the most common retryable errors in
	// terraform testing.
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		// The path to where our Terraform code is located
		TerraformDir: "../examples/ce-app",

		Vars: map[string]interface{}{
			"name":          	   "test-ce-project",
			"project_id":          "project-id",
			"image_reference":     "image-reference",
			"image_secret":        "abcd1234",
			"image_port":          "8080"
		},
	})

	// At the end of the test, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the test if there are any errors
	terraform.InitAndApply(t, terraformOptions)
}
