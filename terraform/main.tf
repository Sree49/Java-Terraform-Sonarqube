

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
