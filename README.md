# FastSpec
Github repository for our paper *FastSpec: Scalable Generation and Detection of Spectre Gadgets Using Neural Embeddings*
![](FastSpec/FastSpecHD_cropped.gif)
## Abstract:

Several techniques have been proposed to detect vulnerable Spectre gadgets in widely deployed commercial software. Unfortunately, detection techniques proposed so far rely on hand-written rules which fall short in covering subtle variations of known Spectre gadgets as well as demand a huge amount of time to analyze each conditional branch in software. Since it requires arduous effort to craft new gadgets manually, the evaluations of detection mechanisms are based only on a handful of these gadgets. In this work, we employ deep learning techniques for automated generation and detection of Spectre gadgets. We first create a diverse set of Spectre-V1 gadgets by introducing perturbations to the known gadgets. Using mutational fuzzing, we produce a data set with more than 1 million Spectre-V1 gadgets which is the largest Spectre gadget data set built to date. Next, we conduct the first empirical usability study of Generative Adversarial Networks (GANs) for creating assembly code without any human interaction. We introduce SpectreGAN which leverages masking implementation of GANs for both learning the gadget structures and generating new gadgets. This provides the first scalable solution to extend the variety of Spectre gadgets.

Finally, we propose FastSpec which builds a classifier with the generated Spectre gadgets based on the novel high dimensional Neural Embedding technique BERT. For case studies, we demonstrate that FastSpec discovers potential gadgets in OpenSSL libraries and Phoronix benchmarks. Further, FastSpec offers much greater flexibility and much faster classification compared to what is offered by the existing tools. Therefore FastSpec can be used for gadget detection in large-scale projects.

## Folders
### dataset: 
This folder contains the training and test data sets for FastSpec. Each subfolder contains programs in x86 assembly language.

### FastSpec: 
The classifier code and trained model is in this folder.

### SpectreGAN: 
Assembly code generator codes are in this folder.

## Requirements: 
TensorFlow >= v1.5

## How to cite:
TODO
