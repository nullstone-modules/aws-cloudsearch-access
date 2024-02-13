output "env" {
  value = [
    {
      name  = "CLOUDSEARCH_DOCUMENT_ENDPOINT"
      value = local.document_endpoint
    },
    {
      name  = "CLOUDSEARCH_SEARCH_ENDPOINT"
      value = local.search_endpoint
    }
  ]
}
