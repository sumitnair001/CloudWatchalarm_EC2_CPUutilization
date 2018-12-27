variable "InstanceId" {
  type = "string"
}

variable "threshold_percentage" {
type = "string"  
}

variable "region" {
  default = "ap-south-1"

}

variable "sns_topic" {
  type = "string"
}

variable "profile" {
  default = "default"
 }
