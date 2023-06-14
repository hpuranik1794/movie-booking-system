from flask import Flask, render_template, request
import mysql.connector

db = mysql.connector.connect(host='localhost', database='movie', user='root', password='********')
obj = db.cursor()

app = Flask(__name__)

@app.route("/")
def index():
    return render_template("index.html")

@app.route("/movie")
def movies():
    obj.execute("select * from movie_table")
    all = obj.fetchall()
    return render_template("table.html", data1=all)

@app.route("/movie/<mid>")
def m_id(mid):
    id = 0
    if mid=="m1":
        id = 1
    elif mid=="m2":
        id = 2
    elif mid=="m3":
        id = 3
    elif mid=="m4":
        id = 4
    elif mid=="m5":
        id = 5
    elif mid=="m6":
        id = 6
    elif mid=="m7":
        id = 7
    obj.execute("select Name from movie_table where movieid='%d'"%id)
    value = obj.fetchall()
    return render_template("mid.html", value=value)

@app.route("/done", methods=["GET", "POST"])
def done():
    return render_template("done.html")

if (__name__ == "__main__"):
    app.run(debug=True)
