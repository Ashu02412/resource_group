module "rg" {
    source = "../../landing_zone/resource_group"
    rg = var.rg
  
}
module "vnet" {
  source = "../../module/vnet"
  depends_on = [ module.rg ]
  vnet = var.vnet
}
module "subnet" {
  source = "../../module/subnet"
  depends_on = [ module.vnet ,module.rg ]
  subnet = var.subnet
}