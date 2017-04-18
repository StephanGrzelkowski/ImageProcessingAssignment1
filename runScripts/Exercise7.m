clear all 
close all

%% Assignment 7
%Load in the calibration points: 
%function was implemented similar to assignment5 in
%estimateProjectionMatrix()

%% test signature 
%test using calibration points
load('calibrationpoints.mat')

M = estimateProjectionMatrix(xy,XYZ); 
