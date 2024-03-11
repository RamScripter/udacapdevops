from flask import Flask

coreapp = Flask(__name__)

@coreapp.route("/")
def home():
    html = "<h3>My Name is Oliver. Welcome to my Cloud Devops Capstone project, inspired by Tutorials and a nice blog from Alvaro Andres Pinzon Cortes. Further Links and Credits can be found in the READ.ME</h3>"
    return html.format(format)

if __name__ == "__main__":
    # specify port = 80
    coreapp.run(host='0.0.0.0', port=80, debug=True) 