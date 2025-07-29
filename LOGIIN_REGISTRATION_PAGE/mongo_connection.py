import streamlit as st
from pymongo import MongoClient
from pymongo.errors import ConnectionFailure

# URL-encoded password: Hello@123 → Hello%40123
MONGO_URI = "mongodb+srv://harshithsai218:Hello%40123@loginregister.vwqaebc.mongodb.net/?retryWrites=true&w=majority&appName=loginregister"

client = MongoClient(MONGO_URI)

db = client["loginregister"]

users_collection = db["users"]
# Try to connect to MongoDB
try:
    client = MongoClient(MONGO_URI, serverSelectionTimeoutMS=3000)  # 3-second timeout
    client.server_info()  # Force connection check
    st.success("✅ Connected to MongoDB successfully!")
except ConnectionFailure:
    st.error("❌ Failed to connect to MongoDB. Please check your URI and internet connection.")
