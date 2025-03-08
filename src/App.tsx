import { motion } from 'framer-motion'
import Header from './components/Header'
import Features from './components/Features'
import Dashboard from './components/Dashboard'

export default function App() {
  return (
    <div className="app">
      <Header />
      <motion.main
        initial={{ opacity: 0 }}
        animate={{ opacity: 1 }}
        transition={{ duration: 0.5 }}
      >
        <Features />
        <Dashboard />
      </motion.main>
    </div>
  )
}