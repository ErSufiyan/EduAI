
import { useState } from 'react'
import { motion, AnimatePresence } from 'framer-motion'
import QuizTab from './QuizTab'
import StudyPlanTab from './StudyPlanTab'  
import AnalyticsTab from './AnalyticsTab'  

export default function Dashboard() {
  const [activeTab, setActiveTab] = useState('quiz')

  return (
    <section className="dashboard" id="dashboard">
      <div className="container">
        <div className="dashboard-container">
          <div className="dashboard-header">
            <h2>Student Dashboard</h2>
            <span>Welcome, Student</span>
          </div>
          
          <div className="tabs">
            {['quiz', 'study-plan', 'analytics'].map(tab => (
              <motion.div
                key={tab}
                className={`tab ${activeTab === tab ? 'active' : ''}`}
                onClick={() => setActiveTab(tab)}
                whileTap={{ scale: 0.95 }}
              >
                {tab.replace('-', ' ')}
              </motion.div>
            ))}
          </div>
          
          <AnimatePresence mode='wait'>
            <motion.div
              key={activeTab}
              initial={{ opacity: 0, y: 10 }}
              animate={{ opacity: 1, y: 0 }}
              exit={{ opacity: 0, y: -10 }}
              transition={{ duration: 0.2 }}
            >
              {activeTab === 'quiz' && <QuizTab />}
              {activeTab === 'study-plan' && <StudyPlanTab />}
              {activeTab === 'analytics' && <AnalyticsTab />}
            </motion.div>
          </AnimatePresence>
        </div>
      </div>
    </section>
  )
}