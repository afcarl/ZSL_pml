#!/usr/bin/env python

try:
	import cPickle as pickle
except:
	import pickle

vec_filepath = '../data/wordvec.txt'

word_vectors = {}

with open(vec_filepath) as vec_file:
	for line in vec_file:
		(key,val) = line.split('\t',1)
		word_vectors[key] = val
pickle.dump(word_vectors, open('../data/wordvec.p','wb'))