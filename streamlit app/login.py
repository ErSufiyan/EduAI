# # login.py
# import streamlit as st
# from db import get_db_connection

# # Custom CSS for styling
# def load_css():
#     st.markdown(
#         """
#         <style>
#         .stButton button {
#             background-color: #4CAF50;
#             color: white;
#             border-radius: 5px;
#             padding: 10px 20px;
#             font-size: 16px;
#             border: none;
#             cursor: pointer;
#         }
#         .stButton button:hover {
#             background-color: #45a049;
#         }
#         .stTextInput input {
#             border-radius: 5px;
#             padding: 10px;
#             font-size: 16px;
#         }
#         .stMarkdown h1 {
#             color: #4CAF50;
#             text-align: center;
#         }
#         .stMarkdown h2 {
#             color: #4CAF50;
#         }
#         .stMarkdown p {
#             font-size: 18px;
#         }
#         </style>
#         """,
#         unsafe_allow_html=True,
#     )

# # Sign-up function
# def sign_up(username, password, confirm_password):
#     if password != confirm_password:
#         st.error("Passwords do not match. Please try again.")
#         return False

#     conn = get_db_connection()
#     cursor = conn.cursor()
#     try:
#         # Check if username already exists
#         cursor.execute("SELECT * FROM users WHERE username = %s", (username,))
#         if cursor.fetchone():
#             st.error("Username already exists. Please choose a different username.")
#             return False

#         # Insert new user into the database
#         cursor.execute("INSERT INTO users (username, password) VALUES (%s, %s)", (username, password))
#         conn.commit()
#         st.success("Sign-up successful! 🎉 Please login with your new credentials.")
#         return True
#     except Exception as e:
#         st.error(f"An error occurred: {e}")
#         return False
#     finally:
#         conn.close()

# # Login page
# def login_page():
#     load_css()
#     st.markdown("# 🎓 Personalized Learning for Everyone")
#     st.markdown(
#         """
#         **Our AI-powered platform adapts to your learning style, providing personalized quizzes, recommendations, and analytics to help you succeed.**
#         """
#     )

#     # Login and Sign-Up tabs
#     tab1, tab2 = st.tabs(["🔑 Login", "📝 Sign Up"])

#     with tab1:
#         st.markdown("## Login to Your Account")
#         st.markdown("Enter your credentials to access your personalized learning dashboard.")
#         username = st.text_input("👤 Username", placeholder="Enter your username", key="login_username")
#         password = st.text_input("🔒 Password", type="password", key="login_password")

#         if st.button("Login", key="login_button"):
#             if username and password:
#                 conn = get_db_connection()
#                 cursor = conn.cursor()
#                 cursor.execute("SELECT * FROM users WHERE username = %s AND password = %s", (username, password))
#                 user = cursor.fetchone()
#                 conn.close()

#                 if user:
#                     st.session_state.logged_in = True
#                     st.session_state.user_id = user[0]  # Store user ID in session state
#                     st.success("Login successful! 🎉 Redirecting to your dashboard...")
#                     st.rerun()
#                 else:
#                     st.error("Invalid username or password. Please try again.")
#             else:
#                 st.error("Please enter your username and password.")

#     with tab2:
#         st.markdown("## Create a New Account")
#         st.markdown("Join our platform to start your personalized learning journey.")
#         new_username = st.text_input("👤 Username", placeholder="Choose a username", key="signup_username")
#         new_password = st.text_input("🔒 Password", type="password", key="signup_password")
#         confirm_password = st.text_input("🔒 Confirm Password", type="password", key="confirm_password")

#         if st.button("Sign Up", key="signup_button"):
#             if new_username and new_password and confirm_password:
#                 if sign_up(new_username, new_password, confirm_password):
#                     st.rerun()  # Refresh the page to show the login tab
#             else:
#                 st.error("Please fill in all fields.")


# login.py (temporary modification)
import streamlit as st

def load_css():
    st.markdown(
        """
        <style>
        .stButton button { background-color: #4CAF50; color: white; border-radius: 5px; padding: 10px 20px; font-size: 16px; border: none; cursor: pointer; }
        .stButton button:hover { background-color: #45a049; }
        .stTextInput input { border-radius: 5px; padding: 10px; font-size: 16px; }
        .stMarkdown h1 { color: #4CAF50; text-align: center; }
        .stMarkdown h2 { color: #4CAF50; }
        .stMarkdown p { font-size: 18px; }
        </style>
        """,
        unsafe_allow_html=True,
    )

def login_page():
    load_css()
    st.markdown("# 🎓 Personalized Learning for Everyone")
    st.markdown("**Our AI-powered platform adapts to your learning style...**")

    # Simplified login for testing
    if st.button("Login as Guest"):
        st.session_state.logged_in = True
        st.session_state.user_id = 1  # Dummy user ID
        st.success("Logged in as guest!")
        st.rerun()

# Comment out the original login_page() code for now