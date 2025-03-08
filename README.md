# EduAI Quiz App

## Overview

The **EduAI Quiz App** is an interactive web application designed to help students test their knowledge on various topics, such as **Machine Learning**, **Data Structures**, **Algorithms**, and **Web Development**. The app provides a personalized quiz experience, complete with detailed performance analysis, recommendations, and a summary of strengths and weaknesses.

The app is built using **Streamlit** for the frontend, **MySQL** for the database, and integrates with **Groq** for generating personalized feedback using advanced language models.

---

## Features

1. **Interactive Quiz Interface:**
   - Students can select a topic and take a quiz with questions of varying difficulty levels (easy, medium, hard).
   - Real-time feedback on correct and incorrect answers.

2. **Performance Analysis:**
   - Visual representation of quiz results using **pie charts** and **bar charts**.
   - Detailed breakdown of correct vs incorrect answers.

3. **Personalized Feedback:**
   - Generates a **SWOT analysis** (Strengths, Weaknesses, Opportunities, Threats) based on quiz performance.
   - Provides **recommendations** for improvement, including:
     - GNN-based learning paths.
     - YouTube video links.
     - Web study resources.

4. **Dynamic Report Generation:**
   - Uses **Groq** to generate a detailed summary of the student's performance.
   - Displays the summary in a clean, professional format.

5. **Wide and Responsive Layout:**
   - The analysis section is designed to be wide and easy to read, with a clean and modern UI.

---

## Technologies Used

- **Frontend:** Streamlit
- **Backend:** Python
- **Database:** MySQL
- **AI Integration:** Groq (for personalized feedback)
- **Visualization:** Matplotlib
- **Styling:** Custom CSS

---

## Installation and Setup

### Prerequisites

1. **Python 3.8+**: Ensure Python is installed on your system.
2. **MySQL**: Set up a MySQL database to store quiz questions and results.
3. **Groq API Key**: Obtain an API key from [Groq](https://groq.com/).

### Steps to Run the App

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/your-repo/eduai-quiz-app.git
   cd eduai-quiz-app
   ```

2. **Set Up a Virtual Environment:**
   ```bash
   python -m venv venv
   source venv/bin/activate  # On Windows, use `venv\Scripts\activate`
   ```

3. **Install Dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

4. **Set Up the Database:**
   - Create a MySQL database named `eduai`.
   - Update the database connection details in `db.py`:
     ```python
     connection = mysql.connector.connect(
         host="localhost",
         user="root",
         password="your_password",
         database="eduai"
     )
     ```
   - Run the SQL script to create the quizzes table:
     ```sql
     CREATE TABLE quizzes (
         id INT AUTO_INCREMENT PRIMARY KEY,
         topic VARCHAR(255) NOT NULL,
         question TEXT NOT NULL,
         options JSON NOT NULL,
         answer VARCHAR(255) NOT NULL,
         difficulty INT NOT NULL  -- 1: Easy, 2: Medium, 3: Hard
     );
     ```
   - Add Quiz Questions:
     ```sql
     INSERT INTO quizzes (topic, question, options, answer, difficulty)
     VALUES (
         'Machine Learning',
         'What is the purpose of a cost function in machine learning?',
         '["To measure model performance", "To optimize hyperparameters", "To preprocess data", "To visualize data"]',
         'To measure model performance',
         1
     );
     ```

5. **Run the App:**
   ```bash
   streamlit run app.py
   ```

6. **Access the App:**
   Open your browser and navigate to `http://localhost:8501`.

---

## Usage

1. **Login:**
   - Enter your credentials to log in (if applicable).

2. **Select a Topic:**
   - Choose a quiz topic (e.g., Machine Learning, Data Structures).

3. **Take the Quiz:**
   - Answer the questions and submit the quiz.

4. **View Results:**
   - After submitting, you will see:
     - Your score and accuracy.
     - A pie chart showing correct vs incorrect answers.
     - A bar chart showing question-wise performance.
     - A personalized report with SWOT analysis and recommendations.

5. **Retake the Quiz:**
   - Click the `Take Another Quiz` button to start over.

---

## Folder Structure
```
eduai-quiz-app/
├── app.py                # Main Streamlit app
├── db.py                 # Database connection and queries
├── quiz.py               # Quiz logic and interface
├── analysis.py           # Performance analysis and report generation
├── agents/               # AI agents for feedback and recommendations
│   ├── report_agent.py   # Generates personalized reports
│   ├── gnn_recommendation.py  # Simulates GNN-based recommendations
│   ├── youtube_agent.py  # Fetches YouTube video links
│   └── web_search_agent.py  # Searches for web resources
├── requirements.txt      # Python dependencies
├── README.md             # Project documentation
└── screenshots/          # Screenshots for documentation
```

---

## Contributing

Contributions are welcome! If you'd like to contribute, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bugfix.
3. Commit your changes and push to your branch.
4. Submit a pull request.

---

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

---

## Acknowledgments

- **Streamlit**: For the interactive web app framework.
- **Groq**: For providing the language model used in personalized feedback.
- **Matplotlib**: For data visualization.



