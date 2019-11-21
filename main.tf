# variable "story" {
#   default="nothing-received-for-story"
# }

# variable "sentence" {
#   default="no-sentence"
# }

module "fromsairam" {
  source = "github.com/sbatchu1/tf-exercise"
}

# variable "mike" {
#     default = "noting received"
#     value=module.fromsairam.sai_msg)
# }

# locals {
#     mike = module.fromsairam.sai_msg
# }


output "samyak_msg" {
  value = "${format("im batman, %s!",module.fromsairam.sai_msg)}"
}

# output "samyak_msg" {
#   value = "${var.story} ${var.sentence}"
# }