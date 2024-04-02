# Plotting Temperture Data
# 9/28/17

import matplotlib.pyplot as plt
import numpy as np

# data arrays
time_data = []
temp0_data = []
temp1_data = []
temp2_data = []

# read in the data
lines = np.loadtxt('Final_Project_W_Dust', delimiter = ',')
for line in lines:
    time_data.append(line[0]) # 1st item in row is the time
    temp0_data.append(line[1]) # 2nd item in row is the temperature
    temp1_data.append(line[2])
    temp2_data.append(line[3])
    

# linear function
def my_funk(x,a,b):
    return a*x + b

# make a plot
fig = plt.figure()
ax = fig.add_subplot(1, 1, 1)

fit_time_data = np.array(time_data)

# make a x/y scatter plot
plt.plot(time_data, temp0_data, color = 'purple', label = 'Temperature Data')
plt.plot(time_data, temp1_data, color = 'blue', label = 'Temperature Data')
plt.plot(time_data, temp2_data, color = 'red', label = 'Temperature Data')

# add the line to fit the data
#plt.plot(fit_time_data, my_funk(fit_time_data, 0.076, 292.0), color = 'black', label = 'Temperture Fit')

# label the axes
ax.set_xlabel('Time (s)')
ax.set_ylabel('Temperature (C)')
ax.set_title('Temperature vs. Time')
plt.legend(loc = 'upper right')

plt.savefig('With_Dust.png', dpi = 900)
