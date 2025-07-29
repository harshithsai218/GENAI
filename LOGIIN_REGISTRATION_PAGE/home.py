import streamlit as st
# from pymongo import MongoClient
# from pymongo.errors import ConnectionFailure

# # URL-encoded password: Hello@123 → Hello%40123
# MONGO_URI = "mongodb+srv://harshithsai218:Hello%40123@loginregister.vwqaebc.mongodb.net/?retryWrites=true&w=majority&appName=loginregister"

st.title("WELCOME TO LOGIN REGISTRATION PAGE")
st.write("""This is a Streamlit-based Login & Registration page connected to a live MongoDB database.

Key Features:
- Passwords are hashed using bcrypt for secure storage.
- Validates user email format.
- Ensures mobile number is exactly 10 digits.
- Checks if password and confirm password match.
- Enforces password strength (8+ characters, includes uppercase, lowercase, digits, and special characters).

MongoDB Atlas is used for live cloud storage of all user credentials and information.""")
# # Try to connect to MongoDB
# try:
#     client = MongoClient(MONGO_URI, serverSelectionTimeoutMS=3000)  # 3-second timeout
#     client.server_info()  # Force connection check
#     st.success("✅ Connected to MongoDB successfully!")
# except ConnectionFailure:
#     st.error("❌ Failed to connect to MongoDB. Please check your URI and internet connection.")
# st.page_link("pages/registration_page.py", label="Register", icon="📝")
# st.page_link("pages/login_page.py", label="Login", icon="🔑")
# Hide default Streamlit sidebar page nav
# st.set_page_config(page_title="Home", layout="centered")

# st.markdown("<h1 style='text-align: center;'>Welcome</h1>", unsafe_allow_html=True)