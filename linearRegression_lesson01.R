## --------------------------------------
## Lessons 1.4 - students height x weight
## --------------------------------------
## read dataset
#dataset = read.csv( '../dataset/student_height_weight.csv', stringsAsFactor=F )
#
## training model
#lr_model = lm( wt ~ ht, data=dataset )
#
## print analysis
#print( summary( lr_model ) )
#print( anova( lr_model ) )

# --------------------------------------
# Lessons 1.5 - skin cancer
# --------------------------------------
dataset = read.csv( 'dataset/skincancer.csv', stringsAsFactor=F )
lr_model = lm( Mort ~ Lat, data=dataset )

print( '===> Pearson Correlation' )
print( cor( dataset$Lat, dataset$Mort, method='pearson' ) )

print( '===> Model summary' )
print( summary( lr_model ) )

print( '===> Analysis of Variance' )
print( anova( lr_model ) )
