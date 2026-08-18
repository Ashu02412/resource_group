module "rg" {
    source = "../../landing_zone/resource_group"
    rg = var.rg
  
}
module "vnet" {
  source = "../../module/vnet"
  depends_on = [ module.rg ]
  vnet = var.vnet
}
