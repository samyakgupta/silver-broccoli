variable "story" {
  default="nothing-received-for-story"
}

variable "sentence" {
  default="no-sentence"
}

module "fromsairam" {
  source = "https://github.com/sbatchu1/tf-exercise"
  sentence="im batman"
  story="${module.sai_msg.value} ${var.sentence}"
}

output "result" {
  value = var.story
}