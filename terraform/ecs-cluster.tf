module "ecs_cluster_purchases" {
  source  = "terraform-aws-modules/ecs/aws//modules/cluster"
  version = "5.2.2"

  cluster_name = "${local.environment}-cluster"

  fargate_capacity_providers = {
    FARGATE = {
      default_capacity_provider_strategy = {
        weight = 100
        base   = 0
      }
    }
    FARGATE_SPOT = {
      default_capacity_provider_strategy = {
        weight = 0
      }
    }
  }
}

output "cluster_arn" {
  description = "ARN that identifies the cluster"
  value       = module.ecs_cluster_purchases.arn
}

output "cluster_id" {
  description = "ID that identifies the cluster"
  value       = module.ecs_cluster_purchases.id
}

output "cluster_name" {
  description = "Name that identifies the cluster"
  value       = module.ecs_cluster_purchases.name
}

output "cluster_capacity_providers" {
  description = "Map of cluster capacity providers attributes"
  value       = module.ecs_cluster_purchases.cluster_capacity_providers
}