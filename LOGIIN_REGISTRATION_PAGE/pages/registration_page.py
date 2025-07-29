import streamlit as st
import re,bcrypt
# import csv,os
from mongo_connection import users_collection
print(users_collection)
# Filename = 'registration.csv'

# def save_to_csv(data,filename = 'registration.csv'):
#     file_exist = os.path.isfile(filename)

#     with open(filename,'a',newline='') as file:
#         writer = csv.writer(file)

#         if not file_exist:
#             writer.writerow(['first_name', 'last_name', 'email', 'mobile_number', 'password'])

#         writer.writerow(data)

def hash_pass(password):
    return bcrypt.hashpw(password.encode('utf-8'),bcrypt.gensalt()).decode()

def mail_check(email):
    return re.match(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$", email) is not None

def mobile_check(mobile_number):
    return re.match(r"^\d{10}$",mobile_number) is not None

def pass_check(password, confirm_password):
    return password == confirm_password

def name_check(first_name, last_name):
    return re.match(r"^[a-zA-Z]+$", first_name) is not None and re.match(r"^[a-zA-Z]+$", last_name) is not None
        
def submit(first_name, last_name, email, mobile_number, password, c_password):
    h_password = hash_pass(password)
    # user_data = [first_name, last_name, email, mobile_number, h_password]
    # email_exists = False
    # mobile_exists = False
    if not name_check(first_name, last_name):
        st.error("Invalid name. Please use only letters.")
    elif not mail_check(email):
        st.error("Invalid email format. Please enter a valid email address.")
    elif not mobile_check(mobile_number):
        st.error("Invalid mobile number. Please enter a 10-digit number.")
    elif not pass_check(password, c_password):
        st.error("Passwords do not match.")
    else:
        password_errors = check_pass_strength(password)
        if password_errors:
            for err in password_errors:
                st.error(err)
        else:

            if users_collection.find_one({"email":email}):
                st.error("Email already exists")
            elif users_collection.find_one({"mobile_number":mobile_number}):
                st.error("Mobile Number already exists")
            else:
                users_collection.insert_one({
                    "first_name": first_name,
                    "last_name": last_name,
                    "email": email,
                    "mobile_number": mobile_number,
                    "password": h_password
                })
                st.success("REGISTERED SUCCESSFULLY")
            # try:
            #     with open(Filename,mode='r')as file:
            #         reader = csv.DictReader(file)
            #         for row in reader:
            #             if row['email'] == email :
            #                 email_exists = True
            #             if row['mobile_number'] == mobile_number:
            #                 mobile_exists = True
            # except FileNotFoundError:
            #     pass
            
            # if email_exists:
            #     st.error("Email Number already exists")
            # elif mobile_exists:
            #     st.error("Mobile Number already exists")
            # else:
            #     save_to_csv(user_data)
            #     st.success("REGISTERED")
                

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

def registration_page():
    st.set_page_config(page_title="Registration Page")
    st.title("REGISTRATION PAGE")
    with st.form("registration form",clear_on_submit=True):
        first_name = st.text_input("FIRST NAME")
        last_name = st.text_input("LAST NAME")
        email = st.text_input("EMAIL")
        mobile_number = st.text_input("MOBILE NUMBER")
        password = st.text_input("PASSWORD", type="password")
        c_password = st.text_input("CONFIRM PASSWORD", type="password")
        submit_button = st.form_submit_button("REGISTERED")
        if submit_button:
            submit(first_name, last_name, email, mobile_number, password, c_password)
            
    if st.button("Already registered? Go to Login "):
        st.switch_page("login_page")

registration_page()



