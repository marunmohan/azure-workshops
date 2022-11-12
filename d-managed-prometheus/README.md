# Azure Managed Prometheus with Azure Managed Grafana
This repo contains demonstration of managed Prometheus and Grafana in Azure.

Terraform is used to provision complete environment automatically. Because quite a few preview features are used, AzApi Terraform provider is used for some of objects.

Solution creates:
- Azure Managed Grafana
- Azure Managed Prometheus using Azure Monitor Workspace
- Azure Kubernetes Service enrolled for monitoring
- Simple application deployed to AKS demonstrating scraping custom prometheus metrics

To demonstrate:
- Open Grafana and show built-in dashboards for nodes, workloads, pods etc.
- Go to Explore section and search fo my_failure metrics (custom metrics from our app) and demonstrate how you can build custom view of custom metric
