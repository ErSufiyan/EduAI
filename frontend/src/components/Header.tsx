import { motion } from 'framer-motion'
import { Link } from 'react-router-dom'

export default function Header() {
  return (
    <motion.header
      initial={{ y: -100 }}
      animate={{ y: 0 }}
      transition={{ type: 'spring', stiffness: 120 }}
    >
      <div className="container">
        <nav>
          <Link to="#" className="logo">EduAI</Link>
          <div className="nav-links">
            {['features', 'dashboard', 'quiz', 'analytics'].map((link, index) => (
              <motion.a
                key={link}
                href={`#${link}`}
                whileHover={{ scale: 1.05 }}
                transition={{ type: 'spring', stiffness: 300 }}
              >
                {link.charAt(0).toUpperCase() + link.slice(1)}
              </motion.a>
            ))}
          </div>
          <Link to="#login" className="btn btn-outlined">Log In</Link>
        </nav>
      </div>
      
      <div className="container">
        <motion.div 
          className="hero"
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          transition={{ delay: 0.2 }}
        >
          <div className="hero-content">
            <motion.h1 className="hero-title" whileHover={{ scale: 1.02 }}>
              Learn Smarter with AI
            </motion.h1>
            <p className="hero-subtitle">
              Personalized quizzes, tailored study plans, and real-time analytics
            </p>
            <div className="hero-btns">
              <motion.a href="#dashboard" className="btn btn-outlined" whileHover={{ scale: 1.05 }}>
                Explore Dashboard
              </motion.a>
              <motion.a href="#quiz" className="btn btn-outlined" whileHover={{ scale: 1.05 }}>
                Try a Quiz
              </motion.a>
            </div>
          </div>
        </motion.div>
      </div>
    </motion.header>
  )
}