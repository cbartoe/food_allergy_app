#Flask App For Propel Group 3 Allergy App

#Import dependencies
from flask import Flask, jsonify
import sqlalchemy
from sqlalchemy.ext.automap import automap_base
from sqlalchemy.orm import Session
from sqlalchemy import create_engine, func

#Create engine
engine = create_engine('




#Create Flask instance
allergy_flask_app = Flask(__name__)

#Create Routes:
#Create Root Route
@allergy_app.route('/')





