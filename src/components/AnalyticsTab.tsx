import { motion } from 'framer-motion'

const progressData = [
  { subject: 'Data Structures', progress: 65 },
  { subject: 'Algorithms', progress: 42 },
  { subject: 'Web Development', progress: 78 }
]

export default function AnalyticsTab() {
  return (
    <div className="analytics-container">
      <div className="card">
        <h3>Performance Overview</h3>
        <div className="chart-container">
          <motion.div
            className="chart-placeholder"
            initial={{ opacity: 0 }}
            animate={{ opacity: 1 }}
          >
            Performance Chart Visualization
          </motion.div>
        </div>
      </div>

      <div className="card">
        <h3>Learning Streak</h3>
        <p>5-day learning streak! 🔥</p>
        <div className="streak-container">
          {['M', 'T', 'W', 'T', 'F', 'S', 'S'].map((day, index) => (
            <motion.div
              key={index}
              className={`streak-day ${index < 5 ? 'completed' : ''}`}
              whileHover={{ scale: 1.1 }}
            >
              {day}
            </motion.div>
          ))}
        </div>
      </div>

      <div className="card">
        <h3>Subject Mastery</h3>
        {progressData.map((item, index) => (
          <div key={item.subject} className="progress-container">
            <div className="progress-header">
              <span>{item.subject}</span>
              <span>{item.progress}%</span>
            </div>
            <div className="progress-bar">
              <motion.div
                className="progress"
                initial={{ width: 0 }}
                animate={{ width: `${item.progress}%` }}
                transition={{ delay: index * 0.1 }}
              />
            </div>
          </div>
        ))}
      </div>
    </div>
  )
}