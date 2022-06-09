resource "helm_release" "kiali-operator" {
  name = "kiali-operator"

  repository          = var.helm_repository
  repository_username = var.helm_repository_username
  repository_password = var.helm_repository_password

  chart     = "kiali-operator"
  version   = var.chart_version
  namespace = var.helm_namespace
  timeout   = 1200

  values = [
    var.values,
  ]
}
