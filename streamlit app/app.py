import streamlit as st
from login import login_page
from quiz import quiz_page
from analysis import analysis_page

# Main function to handle navigation
def main():
    st.set_page_config(page_title="EduAI Quiz App", page_icon="🎓")

    # Initialize session state variables
    if "logged_in" not in st.session_state:
        st.session_state.logged_in = False
    if "quiz_started" not in st.session_state:
        st.session_state.quiz_started = False
    if "quiz_submitted" not in st.session_state:
        st.session_state.quiz_submitted = False

    # Navigation logic
    if not st.session_state.logged_in:
        login_page()  # Show login page if not logged in
    elif not st.session_state.quiz_submitted:
        quiz_page()  # Show quiz page if quiz is not submitted
    else:
        analysis_page()  # Show analysis page if quiz is submitted

# Run the app
if __name__ == "__main__":
    main()