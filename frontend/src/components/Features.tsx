import { motion } from 'framer-motion'

const features = [
  { icon: '🧠', title: 'AI-Driven Quiz Generation', 
    desc: 'Dynamic quizzes based on performance' },
  { icon: '📚', title: 'Personalized Study Plans', 
    desc: 'Tailored material recommendations' },
  { icon: '📊', title: 'Real-Time Analytics', 
    desc: 'Instant learning progress insights' },
  { icon: '🏆', title: 'Sustainable Learning', 
    desc: 'Track and reward study habits' }
]

export default function Features() {
  return (
    <section className="features" id="features">
      <div className="container">
        <h2 className="section-title">Smart Features</h2>
        <p className="section-subtitle">AI-powered learning adaptation</p>
        
        <div className="features-grid">
          {features.map((feature, index) => (
            <motion.div
              key={feature.title}
              className="feature-card"
              initial={{ opacity: 0, y: 50 }}
              animate={{ opacity: 1, y: 0 }}
              transition={{ delay: index * 0.1 }}
              whileHover={{ scale: 1.05 }}
            >
              <div className="feature-icon">{feature.icon}</div>
              <h3>{feature.title}</h3>
              <p>{feature.desc}</p>
            </motion.div>
          ))}
        </div>
      </div>
    </section>
  )
}