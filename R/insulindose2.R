##' calculate insulin base based on blood glucose and carb intake when sensivitiy factor and carb ratio are not available.
##'
##' This function predicts the correct insulin dose by taking into account current glucose level and carbohydrate intake.
##' Insulin dose is equal to (current glucose level-target glucose level)/sensitivity factor+carbohydrate intake/carb ratio.
##' If the glucose level is less than 80, it will show the warning message.
##' Conventionally, target glucose is 120
##' Since sensitivity factor and carb ratio are not available in this situation, we will need to estimate them based on total daily insulin requirement.
##' The formula is:
##' senitivity factor=2000/total daily insulin requirement
##' carb ratio=450/total daily insulin requirement
##' @title calculate insulin dose with unknown sensitivity factor and carb ratio
##' @param glucose current blood glucose reading (mg/dL)
##' @param carb carbohydrate intake (gram)
##' @param insulin total daily insulin requirement (unit)
##' @return insulin dose (unit)
##' @author Chi Tang
##' @export
##' @examples
##' insulindose(170,48,40)
insulindose2<-function(glucose,carb,insulin){
  sensitivity_factor<-2000/insulin
  carb_ratio<-450/insulin
  if(glucose<80){return("glucose is too low, do not give insulin")}
  else{(glucose-120)/sensitivity_factor+carb/carb_ratio}
}
