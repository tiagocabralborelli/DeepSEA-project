import click
import os
from deepsea.loader import load_fasta, model_loader, enc_loader
from deepsea.deepsea import apply_model


#MODELS
ALIGNED,UNALIGNED = model_loader()
ENCODER = enc_loader()


@click.group()
def deepsea():
    pass

@deepsea.command()
def download():
    os.system("wget https://zenodo.org/records/10976253/files/Models.zip?download=1&preview=1")


@deepsea.command()
@click.option("--input", help = "path to input fasta file")
@click.option("--output", help = "output file name")

def predict(input, output):
    data = load_fasta(input = input)
    aligned_yhat = apply_model(ALIGNED,data,ENCODER)
    unaligned_yhat = apply_model(UNALIGNED,data,ENCODER)

    data["Aligned-class"] = aligned_yhat[0]
    data["Aligned-prob"] = aligned_yhat[1]
    data["Unaligned-class"] = unaligned_yhat[0]
    data["Unaligned-prob"] = unaligned_yhat[1]
    try:
        os.makedirs("DeepSEA-output")
    except:
        print("Output file already exists!")
    data["sequence"] = data.sequence.apply(lambda x: "".join(x.split(" ")) )
    data.to_csv(f"DeepSEA-output/{output}.csv", index = False)


if __name__ == '__main__':
    deepsea()