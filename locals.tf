locals {
  location_abbr        = { "westcentralus" : "wcus", "westus" : "wus", "westus2" : "wus2" }
  uniq_name            = length(regexall("[[:alnum:]]", chomp(trimspace(var.unique_name_string)))) < 1 ? "" : "${var.unique_name_string}-"
  elastic_worker_count = var.asp_sku == "^EP" ? var.maximum_elastic_worker_count : null
  tags = merge({
    "terraform" : "yes",
  }, var.tags)
}
