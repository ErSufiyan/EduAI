# quiz.py - Final version with sample data and proper navigation
import streamlit as st
import random

# Custom CSS for styling
def load_css():
    st.markdown(
        """
        <style>
        .stButton button {
            background-color: #4CAF50;
            color: white;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            cursor: pointer;
        }
        .stButton button:hover {
            background-color: #45a049;
        }
        .stMarkdown h1 {
            color: #4CAF50;
            text-align: center;
        }
        .stMarkdown h2 {
            color: #4CAF50;
        }
        .stMarkdown p {
            font-size: 18px;
        }
        .subject-button {
            display: flex;
            justify-content: center;
            gap: 10px;
            margin-top: 20px;
        }
        .subject-button button {
            flex: 1;
            padding: 20px;
            font-size: 18px;
            border-radius: 10px;
        }
        </style>
        """,
        unsafe_allow_html=True,
    )

# Sample data for quizzes
SAMPLE_QUESTIONS = {
    "Algorithms": [
        {
            "question": "What is the time complexity of a binary search algorithm?",
            "options": ["O(n)", "O(log n)", "O(n^2)", "O(1)"],
            "correct_answer": "O(log n)"
        },
        {
            "question": "Which sorting algorithm has the worst time complexity of O(n^2)?",
            "options": ["Merge Sort", "Quick Sort", "Bubble Sort", "Heap Sort"],
            "correct_answer": "Bubble Sort"
        },
    ],
    "Data Structures": [
        {
            "question": "Which data structure uses LIFO (Last In First Out) principle?",
            "options": ["Queue", "Stack", "Linked List", "Tree"],
            "correct_answer": "Stack"
        },
        {
            "question": "What is the time complexity of inserting an element at the end of a linked list?",
            "options": ["O(1)", "O(n)", "O(log n)", "O(n^2)"],
            "correct_answer": "O(n)"
        },
    ],
    "Machine Learning": [
        {
            "question": "What is the purpose of the 'learning rate' in gradient descent?",
            "options": ["To control the step size", "To initialize weights", "To normalize data", "To reduce overfitting"],
            "correct_answer": "To control the step size"
        },
    ],
    "Web Development": [
        {
            "question": "What does HTML stand for?",
            "options": ["Hyper Text Markup Language", "High-Level Text Machine Language", "Hyperlink and Text Markup Language", "Home Tool Markup Language"],
            "correct_answer": "Hyper Text Markup Language"
        },
    ]
}

# Generate quiz with sample data
def generate_quiz(topic):
    if topic not in SAMPLE_QUESTIONS:
        return []
    questions = SAMPLE_QUESTIONS[topic]
    return random.sample(questions, min(3, len(questions)))  # Return 3 questions for simplicity

# Quiz page
def quiz_page():
    load_css()
    st.markdown("# 🎓 Take a Quiz")
    
    # Initialize session state variables
    if "quiz_started" not in st.session_state:
        st.session_state.quiz_started = False
    if "quiz_questions" not in st.session_state:
        st.session_state.quiz_questions = []
    if "user_answers" not in st.session_state:
        st.session_state.user_answers = {}
    if "current_question" not in st.session_state:
        st.session_state.current_question = 0

    # Subject selection (only show if quiz hasn't started)
    if not st.session_state.quiz_started:
        st.markdown("## Select a Subject")
        col1, col2, col3, col4 = st.columns(4)
        
        with col1:
            if st.button("Algorithms"):
                start_quiz("Algorithms")
        with col2:
            if st.button("Data Structures"):
                start_quiz("Data Structures")
        with col3:
            if st.button("Machine Learning"):
                start_quiz("Machine Learning")
        with col4:
            if st.button("Web Development"):
                start_quiz("Web Development")
    
    # Quiz display (only show if quiz has started)
    else:
        display_quiz()

def start_quiz(subject):
    st.session_state.selected_subject = subject
    st.session_state.quiz_started = True
    st.session_state.current_question = 0
    st.session_state.quiz_questions = generate_quiz(subject)
    st.session_state.user_answers = {}
    st.rerun()

def display_quiz():
    if not st.session_state.quiz_questions:
        st.warning(f"No questions available for {st.session_state.selected_subject}")
        if st.button("Go Back"):
            st.session_state.quiz_started = False
            st.rerun()
        return

    # Display progress
    total_questions = len(st.session_state.quiz_questions)
    current = st.session_state.current_question + 1
    st.progress(current / total_questions)
    st.write(f"Question {current} of {total_questions}")

    # Display current question
    question = st.session_state.quiz_questions[st.session_state.current_question]
    st.subheader(question["question"])
    
    options = question["options"]
    answer = st.radio("Select your answer:", options, key=f"q{st.session_state.current_question}")
    st.session_state.user_answers[st.session_state.current_question] = answer

    # Navigation buttons
    col1, col2, col3 = st.columns([1, 1, 1])
    
    with col1:
        if st.session_state.current_question > 0:
            if st.button("Previous"):
                st.session_state.current_question -= 1
                st.rerun()
    
    with col2:
        if st.session_state.current_question < total_questions - 1:
            if st.button("Next"):
                st.session_state.current_question += 1
                st.rerun()
    
    with col3:
        if len(st.session_state.user_answers) == total_questions:
            if st.button("Submit Quiz"):
                submit_quiz()

def submit_quiz():
    # Save results to session state and trigger analysis page
    st.session_state.quiz_results = []
    for i, question in enumerate(st.session_state.quiz_questions):
        correct_answer = question["correct_answer"]
        user_answer = st.session_state.user_answers.get(i, "")
        st.session_state.quiz_results.append((question["question"], user_answer, correct_answer))
    
    # Critical: Set quiz_submitted to True to trigger analysis page
    st.session_state.quiz_submitted = True
    st.session_state.quiz_started = False
    st.rerun()