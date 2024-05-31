resource "aws_iam_role_policy_attachment" "access" {
  role       = var.app_metadata["role_name"]
  policy_arn = aws_iam_policy.access.arn
}

resource "aws_iam_policy" "access" {
  name   = local.resource_name
  tags   = local.tags
  policy = data.aws_iam_policy_document.access.json
}

data "aws_iam_policy_document" "access" {
  statement {
    effect    = "Allow"
    resources = [local.domain_arn]

    actions = [
      "cloudsearch:document",
      "cloudsearch:search",
    ]
  }

  statement {
    effect    = "Allow"
    resources = ["arn:aws:cloudsearch:${local.region}:${local.account_id}:domain/*"]

    actions = [
      "cloudsearch:DefineIndexField",
      "cloudsearch:DeleteIndexField",
      "cloudsearch:DescribeIndexFields",
      "cloudsearch:DescribeDomains",
      "cloudsearch:IndexDocuments",
    ]
  }
}
