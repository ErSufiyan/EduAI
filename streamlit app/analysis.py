# analysis.py
import streamlit as st
import matplotlib.pyplot as plt
import pandas as pd
import numpy as np

# Custom CSS for styling
def load_css():
    st.markdown(
        """
        <style>
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
        .result-card {
            background-color: #f9f9f9;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
            border-left: 5px solid #4CAF50;
        }
        </style>
        """,
        unsafe_allow_html=True,
    )

# Analysis page
def analysis_page():
    load_css()
    st.markdown("# 🎓 Quiz Results")

    # Calculate results
    if "quiz_results" not in st.session_state or not st.session_state.quiz_results:
        st.warning("No quiz results available. Please take a quiz first.")
        if st.button("Go Back to Quiz"):
            st.session_state.quiz_submitted = False
            st.session_state.quiz_started = False
            st.rerun()
        return

    results = st.session_state.quiz_results
    correct_answers = sum(1 for _, user_answer, correct_answer in results if user_answer == correct_answer)
    total_questions = len(results)
    
    if total_questions == 0:
        st.warning("No questions were answered in the quiz.")
        if st.button("Go Back to Quiz"):
            st.session_state.quiz_submitted = False
            st.session_state.quiz_started = False
            st.rerun()
        return
    
    accuracy = (correct_answers / total_questions) * 100

    # Display a prominent result card
    st.markdown(
        f"""
        <div class="result-card">
            <h2>Your Score: {correct_answers}/{total_questions}</h2>
            <h3>Accuracy: {accuracy:.2f}%</h3>
        </div>
        """,
        unsafe_allow_html=True
    )

    # Pie chart for correct vs incorrect answers
    st.subheader("Correct vs Incorrect Answers")
    labels = ["Correct", "Incorrect"]
    sizes = [correct_answers, total_questions - correct_answers]
    colors = ['#4CAF50', '#FF5252']
    
    fig1, ax1 = plt.subplots(figsize=(8, 6))
    wedges, texts, autotexts = ax1.pie(
        sizes, 
        labels=labels, 
        autopct='%1.1f%%', 
        startangle=90,
        colors=colors,
        explode=(0.05, 0) if correct_answers > 0 else (0, 0.05)
    )
    
    # Style the pie chart text
    for text in texts:
        text.set_fontsize(12)
    for autotext in autotexts:
        autotext.set_fontsize(12)
        autotext.set_color('white')
    
    ax1.axis("equal")
    st.pyplot(fig1)

    # Line chart for question-wise performance
    st.subheader("Question-wise Performance")
    performance_data = {
        "Question": [i+1 for i in range(total_questions)],
        "Correct": [1 if user_answer == correct_answer else 0 for _, user_answer, correct_answer in results]
    }
    df = pd.DataFrame(performance_data)
    
    # Use a bar chart instead of line chart for question performance
    fig2, ax2 = plt.subplots(figsize=(10, 6))
    bars = ax2.bar(
        df["Question"], 
        df["Correct"], 
        color=['#4CAF50' if c == 1 else '#FF5252' for c in df["Correct"]]
    )
    
    # Add labels and styling
    ax2.set_xlabel("Question Number", fontsize=12)
    ax2.set_ylabel("Result (1=Correct, 0=Incorrect)", fontsize=12)
    ax2.set_title("Performance by Question", fontsize=14)
    ax2.set_xticks(df["Question"])
    ax2.set_yticks([0, 1])
    ax2.set_yticklabels(["Incorrect", "Correct"])
    ax2.grid(axis='y', linestyle='--', alpha=0.7)
    
    st.pyplot(fig2)

    # Detailed question breakdown
    st.subheader("Question Details")
    
    for i, (question, user_answer, correct_answer) in enumerate(results):
        is_correct = user_answer == correct_answer
        status_color = "#4CAF50" if is_correct else "#FF5252"
        status_icon = "✅" if is_correct else "❌"
        
        st.markdown(
            f"""
            <div style="margin-bottom: 15px; padding: 15px; border-radius: 5px; border-left: 5px solid {status_color}; background-color: #f9f9f9;">
                <p style="font-weight: bold; margin-bottom: 5px;">Question {i+1}: {question}</p>
                <p style="margin-bottom: 3px;">Your Answer: <span style="color: {status_color};">{user_answer}</span></p>
                <p style="margin-bottom: 3px;">Correct Answer: <span style="color: #4CAF50;">{correct_answer}</span></p>
                <p style="font-size: 20px; margin-top: 5px;">{status_icon}</p>
            </div>
            """,
            unsafe_allow_html=True
        )
    
    # Button to retake quiz
    if st.button("Take Another Quiz"):
        st.session_state.quiz_submitted = False
        st.session_state.quiz_started = False
        st.rerun()