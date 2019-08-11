#!/bin/bash

# map feature using indicator encoding, also produce featmap.txt
python mapfeat_paddy.py

# output prediction task=pred 
../../xgboost mushroom_Paddy.conf task=pred model_in=0002.model

# Print out pred file:
echo -n "Prediction = "
cat pred.txt




