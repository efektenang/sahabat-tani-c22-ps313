# API Documentation Machine Learning
We use TF Serving with Docker in GCP Virtual Machine to serve our ML models.
- Predict image
<br>POST http://34.143.182.78:8501/v1/models/rice_disease:predict
<br>body: {
  instances: [
    FloatArray
  ]
}
<br>response: {
  predictions: [
    FloatArray
  ]
}
