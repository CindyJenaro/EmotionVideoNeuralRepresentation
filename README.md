# The neural representation of visually evoked emotion is high-dimensional, categorical, and distributed across transmodal brain regions

This repository contains the data and code for reproducing results in our paper: [Horikawa, Cowen, Keltner, and Kamitani (2019) The neural representation of emotion is high-dimensional, categorical, and distributed across transmodal brain regions. bioRxiv](https://www.biorxiv.org/content/10.1101/872192v2.abstract).
We investigated the neural representation of visually evoked emotions using fMRI responses to 2185 emotionally evocative short videos generated by [Alan S. Cowen and Dacher Keltner (PNAS, 2017)](https://doi.org/10.1073/pnas.1702247114).


## Data (fMRI data and features)

- The preprocessed fMRI data for five subjects and ratings/features (category, dimension, visual object, and semantic) are available at [figshare](https://doi.org/10.6084/m9.figshare.11988351).
- The preprocessed fMRI data are saved as the [BrainDecoderToolbox2](https://github.com/KamitaniLab/BrainDecoderToolbox2) format.
- The raw fMRI data (bids format) will be available at [OpenNeuro](https://openneuro.org/datasets/ds002425).

## Video stimuli

- We used 2185 emotion evocative short videos collected by Cowen and Keltner (2017).   
- You can request the videos with emotion ratings from the following URL (https://goo.gl/forms/XErJw9sBeyuOyp5Q2).


## Code
Matlab and Python scripts for reproducing main results of our study are available from [code/](code/).

### The main code (emotion2020_analysis_BATCH.m) includes
  - Data preparations for delineating individual ROIs, including WholeBrain, HCP360 ROIs, subcortical regions
  - (regularized) linear regression analyses (encoding/decoding) between MRI data 
     and labels (category, dimension, vision, semantic) associated with 2196 (2181 unique) emotion evocative movie clips.
  - Representational similarity analysis
  - K-means clustering using emotion-related brain activity (encoding results are necessary)

### Preparations (set following data in the appropriate locations):
  - Preprocessed fmri data (e.g., ./data/fmri/Subject1/preprocessed/fmri_Subject1_Session1.h5)
  - ROI information file (./data/fmri/misc/roiInf.mat)
  - Feature data (e.g., ./data/feature/category.mat)
  - Principal gradient data (e.g., ./data/fmri/Subject1/pringrad/Subject1_pringrad_values.mat)
  - BrainDecoderToolbox2 (./code/libraries/BrainDecodeeerToolbox2)

### Main parts:
  - To go through all analyses and get all results, run this and python scripts as below. 
  
    1. run this script with setting 1 for roiDataPreparation variable (required ~20GB; multiple cpu can work in parallel; this can be skipped if you have downloaded and set ROI-wise .mat files in e.g., ./data/fmri/Subject1/rois/)
    2. run this script with setting 1 for performDecAnalyses/performEncAnalyses/performRSAnalyses variables (multiple cpu can work in parallel)
    3. run this script with setting 1 for summaryDecAnalyses/summaryEncAnalyses/summaryRSAnalyses variables
    4. run this script with setting 1 for performeAdditionalAnalysis variable
    5. run python scripts to perform UMAP analyses.
    6. run this script with setting 1 for showDecResults/showEncResults/showRSAResults variable

### Note:
  - Decoding, encoding, and representational similarity analyses can be performed independently.
  - Two umap analysis implemented in python scripts requires results of decoding and encoding analyses.
  - The analysis part (ii) will take about 1 day using 100 cpu to complete all the computations.


