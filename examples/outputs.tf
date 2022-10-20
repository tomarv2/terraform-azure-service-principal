#output "service_principal_object_id" {
#  value       = module.service_principal.service_principal_object_id
#  description = "The object id of the Service Principal."
#}

output "application_id" {
  value       = module.service_principal.application_id
  description = "The client (application) ID."
}
#
#output "service_principal_password" {
#  value       = module.service_principal.service_principal_password
#  description = "The password for the Service Principal."
#}
#
#output "service_principal_key_id" {
#  value       = module.service_principal.service_principal_key_id
#  description = "A UUID used to uniquely identify this password credential."
#}

output "client_secret" {
  value       = module.service_principal.client_secret
  description = "The password for the Service Principal."
}

output "client_password" {
  value       = module.service_principal.client_password
  description = "A UUID used to uniquely identify this password credential."
}

output "owner" {
  value = data.azuread_client_config.current.object_id
}