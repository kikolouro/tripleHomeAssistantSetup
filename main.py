from flask import Flask, render_template
app = Flask(__name__, template_folder='html')
app.config.update(TEMPLATES_AUTO_RELOAD=True)

@app.route('/')
def root():
    return render_template('index.html')