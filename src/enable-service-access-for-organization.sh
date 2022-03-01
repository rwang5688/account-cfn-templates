#!/bin/bash

# Enable AWS Organizations trusted access for AWS CloudFormation StackSets by entering the following:
echo "Enable AWS Organizations trusted access for AWS CloudFormation StackSets ..."
aws organizations enable-aws-service-access \
--service-principal member.org.stacksets.cloudformation.amazonaws.com

# Enable AWS Organizations trusted access for AWS Service Catalog by entering the following into AWS CLI:
echo "Enable AWS Organizations trusted access for AWS Service Catalog ..."
aws organizations enable-aws-service-access \
--service-principal servicecatalog.amazonaws.com

# To verify if these steps were successful, run the following command:
echo "Verify AWS service access for Organization ..."
aws organizations list-aws-service-access-for-organization
