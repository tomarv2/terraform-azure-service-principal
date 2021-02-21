module "service_principal" {
    source = "./../../../_modules/azure/service_principal/service_principal"

    email                                   = var.email
    teamid                                  = var.teamid
    prjid                                   = var.prjid

    client_id                               = var.client_id
    client_secret                           = var.client_secret
    subscription_id                         = var.subscription_id
    tenant_id                               = var.tenant_id

    role                                    = var.role
    scopes                                  = var.scopes
}
