# --------------------------------------
# Lessons 1.4 - students height x weight
# --------------------------------------
# read dataset
dataset = read.csv( '../dataset/student_height_weight.csv', stringsAsFactor=F )

# training model
lr_model = lm( wt ~ ht, data=dataset )

# print analysis
print( summary( lr_model ) )
print( anova( lr_model ) )
