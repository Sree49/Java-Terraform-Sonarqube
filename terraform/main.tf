

module "rg" {
    source = "./modules/rg"
    RG_Name = var.RG_Name
    RG_Location = var.RG_Location
}

module "acr" {
    source = "./modules/acr"
    RG_Name = var.RG_Name
    RG_Location = var.RG_Location
    depends_on = [module.rg]
}

module "aci" {
    source = "./modules/aci"
    RG_Name = var.RG_Name
    RG_Location = var.RG_Location
    container-login-server = module.acr.container-login-server
    container-password = var.container-password
    depends_on = [module.rg, module.acr]
}

module "aca" {
    source = "./modules/aca"
    RG_Name = var.RG_Name
    RG_Location = var.RG_Location
    Container_name = module.acr.container-name
    container-login-server = module.acr.container-login-server
    container-password = var.container-password
    depends_on = [module.rg, module.acr]
}