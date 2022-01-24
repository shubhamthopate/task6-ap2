provider "azurerm" {
  features {
 }

}


module "module-dev1" {
 source = "./modules/module-dev1"
 rgnamedev = var.rgnamedev
 locationdev = var.locationdev
 workspacenamedev = var.workspacenamedev
 insightnamedev = var.insightnamedev
 insight2dev = var.insight2dev
 
}

# module "module-dev2" {
#  source = "./modules/module-dev2"
#  rgnamedev = var.rgnamedev
#  locationdev = var.locationdev
#  insight2dev = var.insight2dev
# }

module "module-qa1" {
 source = "./modules/module-qa1"
 rgnameqa = var.rgnameqa
 locationqa = var.locationqa
 workspacenameqa = var.workspacenameqa
 insightnameqa = var.insightnameqa
 insight2qa = var.insight2qa
 
}

# module "module-qa2" {
#  source = "./modules/module-qa2"
#  rgnameqa = var.rgnameqa
#  locationqa = var.locationqa
#  insight2qa = var.insight2qa
 
# }




