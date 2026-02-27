# Terraform AWS_Instance

this module created  EC2 instance in AWS

## inputs

    1.project - mandatory input, string type and must provide, user must provide project name (ex: Roboshop, expence).
    2.Environment name - mandatory input, string type and must provide environment by user(ex: dev, uat, non-prod, prod).
    3.ami_id - mandatory string type and must provide ami_id for instance by user.
    4.instance_type - totally optional ans should be string, Default value = t3.micro , users can over-write. 
    5.sg_ids - mandatory input,list of string type and must provide security group that instance should have.
    6.tags - totally optional, map type and users can provide their desired tags.

## outputs: // outputs are very important to create other resources like route 53, fetching values like ip addresses etc..

    1. instance_id - id of the instance created
    2. public_ip - public ip of instance created
    3. private_ip - private ip of the instance created