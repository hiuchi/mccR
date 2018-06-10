#'Calculate the Matthews correlation coefficient (MCC) score
#'@param act actual values (vector), 1 (positive), or 0 (negative)
#'@param pred predict values (vector), 1 (positive), or 0 (negative)
#'@return MCC score
#'@examples
#'set.seed(18)
#'act <- abs(round(rnorm(100))) %% 2
#'pred <- abs(round(rnorm(100))) %% 2
#'mccr(act, pred)
#'@export
mccr <- function (act, pred){
  TP <- sum(act == 1 & pred == 1)
  TN <- sum(act == 0 & pred == 0)
  FP <- sum(act == 0 & pred == 1)
  FN <- sum(act == 1 & pred == 0)

  denom <- as.double(TP+FP)*(TP+FN)*(TN+FP)*(TN+FN)
  if (any((TP+FP) == 0, (TP+FN) == 0, (TN+FP) == 0, (TN+FN) == 0)) denom <- 1
  mcc <- ((TP*TN)-(FP*FN)) / sqrt(denom)
  return(mcc)
}
