/* myvpccidr
mysubnetcidr
myami
myinstancetype

 */
variable "myvpccidr" {
    default = "10.1.0.0/16"
} 
variable "mysubnetcidr" {
  default = "10.1.1.0/24"
}
variable "myami" {
    default = "ami-001843b876406202a"
  
}
variable "myinstancetype" {
  default = "t2.medium"
}