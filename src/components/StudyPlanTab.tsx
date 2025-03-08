import { motion } from 'framer-motion'

const subjects = [
  { name: 'Data Structures', progress: 65 },
  { name: 'Algorithms', progress: 42 },
  { name: 'Web Development', progress: 78 }
]

const materials = [
  { type: '📘', title: 'Introduction to Algorithms', desc: 'Review basic sorting algorithms' },
  { type: '🎥', title: 'Data Structures Masterclass', desc: 'Interactive video lessons' },
  { type: '💻', title: 'Practice Problems', desc: 'Curated algorithm problems' }
]

export default function StudyPlanTab() {
  return (
    <div className="study-plan-container">
      <h3 className="card-title">Personalized Study Plan</h3>
      
      <motion.div 
        className="card"
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
      >
        <h4>Weekly Focus Areas</h4>
        {subjects.map((subject, index) => (
          <div key={subject.name} className="progress-container">
            <div className="progress-header">
              <span>{subject.name}</span>
              <span>{subject.progress}% Mastery</span>
            </div>
            <div className="progress-bar">
              <motion.div
                className="progress"
                initial={{ width: 0 }}
                animate={{ width: `${subject.progress}%` }}
                transition={{ delay: index * 0.1 }}
              />
            </div>
          </div>
        ))}
      </motion.div>

      <h3 className="card-title">Recommended Materials</h3>
      <div className="study-material">
        {materials.map((material, index) => (
          <motion.div
            key={material.title}
            className="material-card"
            initial={{ y: 50, opacity: 0 }}
            animate={{ y: 0, opacity: 1 }}
            transition={{ delay: index * 0.1 }}
          >
            <div className="material-img">{material.type}</div>
            <div className="material-content">
              <h4>{material.title}</h4>
              <p>{material.desc}</p>
              <button className="btn btn-primary">Start Learning</button>
            </div>
          </motion.div>
        ))}
      </div>
    </div>
  )
}