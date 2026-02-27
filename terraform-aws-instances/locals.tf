locals {
    common_tags ={
        project = var.project
        Environment = var.environment
        terraform ="true"

    }
    ec2_final_tags = merg (
        local.common_tags,
        var.tags
    )
}