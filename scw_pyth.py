print "hello world"
age = 51
weight = 200
name = "greg"
print age, weight, name
print "pounds per year", weight/age
print type(age) # what kind of array is this like str()
import numpy #load package numpy
data=numpy.loadtxt(fname="inflammation-01.csv", delimiter=",")  # then load txt file, call it data
print data.shape #like dim()
print "first value is:", data[0,0] # first value is 0 not 1
print data[5:10.3:5] #same as R, [row,columns]
print data[:,0] # all rows for column 0
data.max() #max of data
data.min() #min of data
data[0,:].min() #min of data on row 0 and on all columns 
data.mean(axis=0) # like apply(data,2,mean) by columns
data.min() #min of data

#sidenote: use latex code here using markdown
$$\sum \alpha = \pi$$

from matplotlib import pyplot #import matlab like plotting utility
pyplot.plot(data.max(axis=0))
pyplot.show()
pyplot.plot(data.mean(axis=0))
pyplot.show()

#function() in python 
def double(num):
	return 2 * num
print "double of 5 is:", double(5)

def fahr_to_kelvin(temp):
	return ((temp -32) * (5.9/9.0) + 273.15)
print "32 fahr is", fahr_to_kelvin(32)

def squared(x):
	return x*x
print squared(2)

def quad(x):
	return double(squared(x))
print quad(2)

####
# create function to import and plot data
def show_max(filename):
	my_data=numpy.loadtxt(fname=filename, delimiter=",")
	pyplot.plot(my_data.max(axis=0))
	pyplot.show()
#load data to function
show_max("inflammation-01.csv")

#make function to print out each letter in a word
def print_character(word):
	print word[0]
	print word[1]
	print word[2]
	print word[3]
	
print_character('bill')

#make function to print out each letter in a word, with loop
def print_character(word):
	for char in word:
	print char

print_character('bill')

#example loop
length=0
for vowel in 'aeiou':
	length =length + 1

print 'There are', length, 'vowels'
print vowel

# example list
odds =[1,3,5]
print odds

#list are iterable so you can loop over them
for number in odds:
	print number

import glob
filenames=glob.glob('inflammation*.csv') # list all your datafiles
filenames[0]

#for loop that runs our show_max function for all files iteratively
for current_file in filenames:
	print current_file
	show_max(current_file)

#create a function called 'show_max_all' that takes a filename pattern as its sole argument and runs show_max for each file whose name matches that pattern

def show_max_all(filename):
	for current_file in glob.glob(filename):
		print current_file
		show_max(current_file)
	
show_max_all('inflammation-1*.csv')

