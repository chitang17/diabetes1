##' calculate insulin base based on blood glucose and carb intake.
##'
##' This function predicts the correct insulin dose by taking into account current glucose level and carbohydrate intake.
##' Insulin dose is equal to (current glucose level-target glucose level)/sensitivity factor+carbohydrate intake/carb ratio.
##' If the glucose level is less than 80, it will show the warning message.
##' Conventionally, target glucose is 120, sensitivity factor is 50 and carb ratio is 12.
##' @title calculate insulin dose with default sensitivity factor and carb ratio
##' @param glucose current blood glucose reading (mg/dL)
##' @param carb carbohydrate intake (gram)
##' @return insulin dose (unit)
##' @author Chi Tang
##' @export
##' @examples
##' insulindose(170,48)
insulindose<-function(glucose,carb){
  if(glucose<80){return("glucose is too low, do not give insulin")}
  else{(glucose-120)/50+carb/12}
}
