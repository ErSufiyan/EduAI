import { useState } from 'react'
import { motion } from 'framer-motion'

const questions = [
  {
    question: "What is the main advantage of AI-driven learning platforms?",
    options: [
      "They eliminate the need for teachers",
      "They provide the same content to all students",
      "They can adapt to individual learning patterns",
      "They are always free to use"
    ],
    correctAnswer: 2
  },
  // Add more questions...
]

export default function QuizTab() {
  const [currentQuestion, setCurrentQuestion] = useState(0)
  const [selectedAnswer, setSelectedAnswer] = useState<number | null>(null)

  const handleNext = () => {
    setCurrentQuestion(prev => (prev < questions.length - 1 ? prev + 1 : 0))
    setSelectedAnswer(null)
  }

  return (
    <div className="quiz-container">
      <div className="progress-container">
        <span>Question {currentQuestion + 1}/{questions.length}</span>
        <div className="progress-bar">
          <motion.div 
            className="progress"
            initial={{ width: 0 }}
            animate={{ 
              width: `${((currentQuestion + 1) / questions.length) * 100}%` 
            }}
          />
        </div>
      </div>
      
      <motion.div 
        key={currentQuestion}
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
      >
        <h3 className="question">{questions[currentQuestion].question}</h3>
        <div className="options">
          {questions[currentQuestion].options.map((option, index) => (
            <motion.div
              key={option}
              className={`option ${selectedAnswer === index ? 'selected' : ''}`}
              onClick={() => setSelectedAnswer(index)}
              whileHover={{ scale: 1.02 }}
            >
              {option}
            </motion.div>
          ))}
        </div>
      </motion.div>
      
      <motion.button
        className="btn btn-primary"
        onClick={handleNext}
        whileHover={{ scale: 1.05 }}
        disabled={selectedAnswer === null}
      >
        {currentQuestion < questions.length - 1 ? 'Next Question' : 'Restart Quiz'}
      </motion.button>
    </div>
  )
}