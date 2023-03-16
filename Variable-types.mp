#String Valuable are represented by double quoted sequence of unicode characters
  variable "vpcname" {
  type = string       type referes to the type of variable which is string variable
  default = "myvpc"  default means we are assigning my variable to this 
 }  
  
#Numbers are represented by unquoted sequence 
  variable "sshport" {
    type = number
    default = 22
 }
    
#Boolean
unquoted symbols true and false
   Variable "enabled" {
   default = false
 }

#list is represented by a pair of square brackets containing comma
 Variable "mylist" {
  type = list (string)
  default = ["String1", "Value2"]
}
  example 
  instance_type = var.mylist[1]
  
  #Maps/objects are represented by a pair of curly braces containing a series of <KEY> = < VALUE> pairs
    variable "mymap" {
      type = map
      default = {
         Key1 = "Value1"
         Key2 = "Value2"
     }
   }
   
   #Input has no default variable
    variable "inputname" {
      type = string
      description = "set the name of the VPC"
   }
