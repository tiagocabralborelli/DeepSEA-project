from Bio import SeqIO
import pandas as pd
import tensorflow as tf
import joblib

def load_fasta(input):
    """
    Function to convert fasta into a pandas dataframe

    Example:

    Input:
        >Id1
        MMMMMMMMMMMMMMMMMMM
    Output:
        |identifier|Sequence|
        |Id1       |MMMMM...|
        
    """
    df = pd.DataFrame({
        "identifier": [x.description for x in SeqIO.parse(input,"fasta")],
        "sequence":   [" ".join(str(x.seq)) for x in SeqIO.parse(input,"fasta")]
    })
    print(f"loaded {len(df)} sequences")
    return df

def model_loader():
    print("Loading DeepSEA models")
    aligned = tf.keras.models.load_model("../models/Fase4-HMD-align/gru")
    unaligned = tf.keras.models.load_model("../models/Fase4-HMD-unalign/gru")
    print("Models loaded")
    return aligned, unaligned

def enc_loader():
    print("Loading AMR class encoder")
    print("Class encoder loaded")
    return joblib.load(r"class-encoder/class-encoder.joblib")



if __name__ == '__main__':
    load_fasta(input="fasta.fasta")

