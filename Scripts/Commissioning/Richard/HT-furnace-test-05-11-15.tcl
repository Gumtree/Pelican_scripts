
title HT-furnace-test

hset /sample/tc2/ramprate 600

drive tc2_setpoint 1000
wait 600

drive tc2_setpoint 500
wait 600

drive tc2_setpoint 10
wait 600
