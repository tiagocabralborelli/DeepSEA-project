import click
import os
from deepsea.loader import load_fasta, model_loader, enc_loader
from deepsea.deepsea import apply_model


@click.group()
def deepsea():
    pass

@deepsea.command()
def download(): 
    try:
        os.mkdir("models")
    except:
        "Models directory already exists"
    print("Downloading model T800...")
    os.system("curl https://zenodo.org/records/11086187/files/NCRD-unalign.zip?download=1 --output models/NCRD-unalign.zip")
    print("Download complete")
    print("Installing model T800...")
    os.system("unzip models/NCRD-unalign.zip -d models")
    os.system("rm models/NCRD-unalign.zip")
    print("Model T800 installed. You are ready to find and kill the resistance!")

@deepsea.command()
@click.option("--input",  help = "Path to input fasta file")
@click.option("--output", help = "Output file name")
@click.option("--model",  help = "Number of models to annotate ARP. Options: 1 or 2]")

def predict(input, output, model):
    #MODELS

    model1 = model_loader()
    model2 = model_loader(

    ENCODER = enc_loader()

    data = load_fasta(input = input)
    model1_yhat = apply_model(model1,data,ENCODER)
    model2_yhat = apply_model(model2,data,ENCODER)

    if model == 1:
        data["Model1-class"] = model1_yhat[0]
        data["Model-prob"] = model1_yhat[1]

    elif model == 2:
        data["Model1-class"] = model1_yhat[0]
        data["Model1-prob"] = model1_yhat[1]
        data["Model2-class"] = model2_yhat[0]
        data["Model2-prob"] = model2_yhat[1]

    try:
        os.makedirs("DeepSEA-output")
    except:
        print("Output file already exists!")
    data["sequence"] = data.sequence.apply(lambda x: "".join(x.split(" ")) )
    data.to_csv(f"DeepSEA-output/{output}.csv", index = False)


if __name__ == '__main__':
    deepsea()