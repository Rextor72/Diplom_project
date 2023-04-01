from flask import Flask, render_template

app = Flask(__name__)

tasks = [
    {
        "id": 1,
        "title": "Task 1",
        "description": "This is task 1"
    },
    {
        "id": 2,
        "title": "Task 2",
        "description": "This is task 2"
        "id": 3,
        "title": "Task 3",
        "description": "This is task 3"
    }
]

@app.route("/")
def index():
    return render_template("index.html", tasks=tasks)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
