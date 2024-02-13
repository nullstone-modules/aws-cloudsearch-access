data "ns_connection" "domain" {
  name     = "domain"
  contract = "datastore/aws/cloudsearch"
}

locals {
  domain_id         = data.ns_connection.domain.outputs.domain_id
  document_endpoint = data.ns_connection.domain.outputs.document_endpoint
  search_endpoint   = data.ns_connection.domain.outputs.search_endpoint
}
