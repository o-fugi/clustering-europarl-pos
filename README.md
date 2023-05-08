# clustering-europarl-pos
This is the final project for LING 227 at Yale College, Spring 2023, for Olivia Fugikawa and Samuel Ostrove.

## Dependencies
- Python (earlier version than 3.11), with packages `pytorch`, `nltk`, `pickle`, `numpy`, `scipy`, `matplotlib`, `seaborn` and dependencies thereof
- A way to run Jupyter Notebooks (either in a web browser or an IDE)
- RNNTagger, available [https://www.cis.uni-muenchen.de/~schmid/tools/RNNTagger/](here) – see instructions to run. Slight modifications necessary to run on Apple Silicon macs to take full advantage of the neural processing cores.
- Europarl, available [https://www.statmt.org/europarl/](here), download the "source release".

## Files
The GitHub repository contains the following files and directories:
- `tagfiles/Concatenated/_Cleaned` holds the tagged files ready for the Python scripts
- `shell-scripts` holds the shell scripts mentioned below that were used to run RNN, concatenate and clean the output
- `pos_tags.p` is the pickle file for the Jupyter Notebooks
- The two Jupyter Notebooks mentioned below, `convert-ud-testbed.ipynb` and `distance-clustering-testbed.ipynb`
- `Cluster Image.png` is used for the output of the clustering dendrogram.


## Running the project
- If using an Apple Silicon computer rather than x86, replace the device selection sections:
    - in `RNNTagger/PyNMT/nmt-translate.py` (l. 89-91) with
    ```
    use_cuda = torch.cuda.is_available()
    use_mps = torch.backends.mps.is_available()
    NMT.device = torch.device("cuda" if use_cuda else "mps" if use_mps else "cpu")
    model = model.to(NMT.device)
    ```
    - in `RNNTagger/PyRNN/rnn-annotate.py` (l. 37-38) with
    ```
    use_cuda = torch.cuda.is_available()
    use_mps = torch.backends.mps.is_available()
    device = torch.device("cuda" if use_cuda else "mps" if use_mps else "cpu")
    ```
- Start by running RNNTagger on whichever files in Europarl you care to use, from the list of 18 supported languages. One may use the shell scripts available in `shell-scripts` for inspiration on how to automate this.
- Then, concatenate and clean the files for each language. One may also use the shell scripts available in `shell-scripts` for inspiration. The cleaner is'nt perfect.
- Finally, run `convert-ud-testbed.ipynb` with the tag files for each language. Then run `distance-clustering-testbed.ipynb`, which should be in the same folder so that `pickle` can transmit the data.
