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

## --------------------------------------
## Lessons 1.5 - skin cancer
## --------------------------------------
#dataset = read.csv( 'dataset/skincancer.csv', stringsAsFactor=F )
#lr_model = lm( Mort ~ Lat, data=dataset )
#
#print( '===> Pearson Correlation' )
#print( cor( dataset$Lat, dataset$Mort, method='pearson' ) )
#
#print( '===> Model summary' )
#print( summary( lr_model ) )
#
#print( '===> Analysis of Variance' )
#print( anova( lr_model ) )

# --------------------------------------
# Lessons 1.8 - Rsquared cautions
# --------------------------------------
## 1) relation between the avg stopping distance and the spped of a car
#dataset = read.csv( 'dataset/carstopping.csv', stringsAsFactors=F )
#lr_model = lm( StopDist ~ Speed, data=dataset )
#
#print( '===> summary' )
#print( summary( lr_model ) )
#
#print( '===> anova' )
#print( anova( lr_model ) )
#
#print( '===> plot regression line on dataset' )
#plot( dataset$Speed, dataset$StopDist )
#abline( lr_model )

## 2) Running back Eric McCoo's rushing yards and Penn State's final score
#dataset = read.csv( 'dataset/mccoo.csv', stringsAsFactors=F )
#
## removing the one data point in which McCoo ran 206 yards
#dataset = dataset[-nrow( dataset ),]
#lr_model = lm( Score ~ McCoo, data=dataset )
#
#print( '===> summary' )
#print( summary( lr_model ) )
#
#print( '===> anova analysis' )
#print( anova( lr_model ) )
#
#plot( dataset$McCoo, dataset$Score )
#abline( lr_model ) 

## 3) Drugs and budget relation
#dataset = read.csv( 'dataset/drugdea.csv', stringsAsFactor=F )
#lr_model_01 = lm( deaths ~ budget, data=dataset )
#lr_model_02 = lm( budget ~ deaths, data=dataset )
#lr_model_03 = lm( budget ~ year, data=dataset )
#lr_model_04 = lm( deaths ~ year, data=dataset )
#
#par( mfrow=c(2,2) )
#plot( dataset$budget, dataset$deaths, xlab='Budget', ylab='Deaths' )
#abline( lr_model_01 )
#
#plot( dataset$deaths, dataset$budget, xlab='Deaths', ylab='Budget' )
#abline( lr_model_02 )
#
#plot( dataset$year, dataset$budget, xlab='Year', ylab='Budget' )
#abline( lr_model_03 )
#
#plot( dataset$year, dataset$deaths, xlab='Year', ylab='Deaths' )
#abline( lr_model_04 )

## 4) Infant Death x Feeding x Water
#dataset = read.csv( 'dataset/infant.csv', stringsAsFactor=F )
#lr_model_01 = lm( death ~ feeding, data=dataset )
#lr_model_02 = lm( feeding ~ water, data=dataset )
#
#print( '===> model 01' )
#print( summary( lr_model_01 ) )
#print( anova( lr_model_01 ) )
#
#print( '===> model 02' )
#print( summary( lr_model_02 ) )
#print( anova( lr_model_02 ) )
#
#par( mfrow=c(1,2) )
#plot( dataset$feeding, dataset$death, xlab='Feeding', ylab='Death' )
#abline( lr_model_01 )
#
#plot( dataset$water, dataset$feeding, xlab='Water', ylab='Feeding' ) 
#abline( lr_model_02 )

# 6) Old faithful
dataset = read.csv( 'dataset/oldfaithful.csv', stringsAsFactor=F )
lr_model = lm( next. ~ duration, data=dataset )

print( 'summary' )
print( summary( lr_model ) )

print( 'anova analysis' )
print( anova( lr_model ) )

plot( dataset$duration, dataset$next., xlab='Next', ylab='Duration' )
abline( lr_model )

print( '===> predict' )
newdata = data.frame( duration=3 )
pred = predict( lr_model, newdata, interval='predict' )
print( pred )
