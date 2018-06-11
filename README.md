# mccr
This package provides a function to calculate the Matthews correlation coefficient (MCC) (Matthews BW, *Biochim Biophys Acta.*, 1975). MCC is used in wade range of fileds as a measure of binary calassification. The MCC values are calculated following foumula;

<a href="https://www.codecogs.com/eqnedit.php?latex=MCC&space;=\frac{TP&space;\times&space;TN&space;-&space;FP&space;\times&space;FN}{\sqrt{(TP&plus;FP)(TP&plus;FN)(TN&plus;FP)(TN&plus;FN)}}" target="_blank"><img src="https://latex.codecogs.com/gif.latex?MCC&space;=\frac{TP&space;\times&space;TN&space;-&space;FP&space;\times&space;FN}{\sqrt{(TP&plus;FP)(TP&plus;FN)(TN&plus;FP)(TN&plus;FN)}}" title="MCC =\frac{TP \times TN - FP \times FN}{\sqrt{(TP+FP)(TP+FN)(TN+FP)(TN+FN)}}" /></a>

where *TP* is tha number of true positive, *TN* is the number of true negative, *FP* is the number offalse positive and *FN* is the number of false negative. This function returns a value between -1 and 1. A value of 1 indicates a perfect prediction, 0 indicates random prediction and -1 indicates completely disagreement between prediction and actual.
