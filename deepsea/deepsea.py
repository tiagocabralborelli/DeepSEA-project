import tensorflow as tf
import numpy as np

def apply_model(model,data,encoder):
    X = data.sequence.to_list()
    yhat = model.predict(X)
    yhat_prob =[np.round(x[np.argmax(x)],3)  for x in yhat]
    yhat_oh = tf.convert_to_tensor([tf.one_hot(np.argmax(x),len(encoder.categories_[0])) for x in yhat],dtype=tf.float32)
    classes = encoder.inverse_transform(yhat_oh).squeeze()
    return np.array(classes), np.array(yhat_prob)
