data "ns_connection" "domain" {
  name     = "domain"
  contract = "datastore/aws/cloudsearch"
}

locals {
  domain_arn        = data.ns_connection.domain.outputs.domain_arn
  document_endpoint = data.ns_connection.domain.outputs.document_endpoint
  search_endpoint   = data.ns_connection.domain.outputs.search_endpoint
}
