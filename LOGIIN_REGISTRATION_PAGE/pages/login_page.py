import streamlit as st
import re,bcrypt
#import csv
from mongo_connection import users_collection

def mail_check(email):
    return re.match(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$", email) is not None

def pass_check(password, confirm_password):
    return password == confirm_password

def verify_password(plain_password, h_password):
    return bcrypt.checkpw(plain_password.encode('utf-8'), h_password.encode('utf-8'))

def check_pass_strength(password):
    errors = []
    if len(password) < 8:
        errors.append("Password must be at least 8 characters long.")
    if not re.search(r"[A-Z]", password):
        errors.append("Password must contain at least one uppercase letter.")
    if not re.search(r"[a-z]", password):
        errors.append("Password must contain at least one lowercase letter.")
    if not re.search(r"[0-9]", password):
        errors.append("Password must contain at least one digit.")
    if not re.search(r"[!@#$%^&*(),.?\":{}|<>]", password):
        errors.append("Password must contain at least one special character.")
    return errors  


# def submit(email,password):
#     if not mail_check(email):
#         st.error("Invalid email format. Please enter a valid email address.")
#     else :
#         pass_error = check_pass_strength(password)
#         if pass_error :
#             for err in pass_error:
#                 st.error(err)
#         else:
#             st.success("LOGIN SUCESSFULL")


# def submit(email,password,filename='registration.csv'):
#     try:
#         with open(filename,mode='r') as file:
#             reader = csv.DictReader(file)
#             for row in reader:
#                 if row['email'] == email:
#                     if not row['password']:
#                         st.error("Stored password is missing.")
#                         return
#                     if verify_password(password,row['password']):
#                         st.success("LOGIN SUCESSFULL.")
#                         return
#                     else:
#                         st.error("Incorrect password.")
#                         return
#             st.error("Username not found.")
#     except FileNotFoundError:
#         st.error("User database not found.")

def submit(email, password):
    user = users_collection.find_one({"email": email})

    if user:
        if not user.get("password"):
            st.error("Stored password is missing.")
            return

        if verify_password(password, user["password"]):
            st.success("LOGIN SUCCESSFUL.")
            # Optional: Session state
            st.session_state["logged_in"] = True
            st.session_state["user_email"] = email
        else:
            st.error("Incorrect password.")
    else:
        st.error("Username not found.")

def login_page():
    st.set_page_config(page_title="LOGIN PAGE")
    st.title("LOGIN PAGE")
    with st.form("login_form",clear_on_submit=True):
        email = st.text_input("EMAIL")
        password = st.text_input("PASSWORD",type="password")
        submit_button = st.form_submit_button("LOGIN")
        if submit_button:
            submit(email,password)
    
    if st.button("New user? Register here"):
        st.switch_page("Registration Page")


login_page()

