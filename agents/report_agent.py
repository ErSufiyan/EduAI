# agents/report_agent.py
from phi.agent import Agent
from phi.tools.youtube_tools import YouTubeTools
from phi.tools.duckduckgo import DuckDuckGo
from .youtube_agent import YouTubeAgent
from .web_search_agent import WebSearchAgent
from .gnn_recommendation import GNNRecommendation

class ReportAgent(Agent):
    def __init__(self):
        super().__init__(
            tools=[YouTubeTools(), DuckDuckGo()],
            show_tool_calls=True,
            description="Generates a personalized SWOT analysis report for a student after a quiz."
        )
        self.youtube_agent = YouTubeAgent()
        self.web_search_agent = WebSearchAgent()
        self.gnn_recommender = GNNRecommendation()

    def generate_swot_analysis(self, quiz_results, topic):
        """Generate SWOT analysis based on quiz results."""
        strengths = []
        weaknesses = []
        opportunities = []
        threats = []

        # Calculate score
        correct = sum(1 for q, u, c, _ in quiz_results if u == c)
        total = len(quiz_results)
        score = (correct / total) * 100 if total > 0 else 0

        # Strengths
        if score >= 80:
            strengths.append("Strong understanding of core concepts.")
        elif score >= 60:
            strengths.append("Good grasp of basic concepts.")

        # Weaknesses
        if score < 60:
            weaknesses.append("Difficulty with fundamental concepts.")
        wrong_answers = [(q, c) for q, u, c, _ in quiz_results if u != c]
        if wrong_answers:
            weaknesses.append(f"Missed questions on: {', '.join([q[:20] + '...' for q, _ in wrong_answers[:2]])}")

        # Opportunities
        opportunities.append(f"Explore advanced topics in {topic}.")
        if score < 80:
            opportunities.append("Review foundational material to improve.")

        # Threats
        if score < 50:
            threats.append("Risk of falling behind without intervention.")
        threats.append("Increasing complexity in future quizzes.")

        return {
            "Strengths": strengths,
            "Weaknesses": weaknesses,
            "Opportunities": opportunities,
            "Threats": threats,
            "Score": score
        }

    def get_recommendations(self, topic, score):
        """Get GNN-based recommendations (simulated), YouTube videos, and web resources."""
        # Simulated GNN recommendation
        gnn_recommendations = self.gnn_recommender.recommend(topic, score)

        # Fallback for YouTube and Web search if tools fail
        youtube_links = ["https://www.youtube.com/watch?v=dQw4w9WgXcQ"]  # Placeholder
        web_resources = ["https://www.khanacademy.org"]  # Placeholder
        try:
            youtube_query = f"{topic} tutorial for students" if score >= 60 else f"Beginner {topic} tutorial"
            youtube_response = self.youtube_agent.run(youtube_query, stream=False)
            youtube_links = youtube_response.content.split("\n")[:3] if youtube_response else youtube_links

            web_query = f"best {topic} study resources for students 2025"
            web_response = self.web_search_agent.run(web_query, stream=False)
            web_resources = web_response.content.split("\n")[:3] if web_response else web_resources
        except Exception as e:
            print(f"Error fetching recommendations: {e}")

        return {
            "GNN_Recommendations": gnn_recommendations,
            "YouTube_Links": youtube_links,
            "Web_Resources": web_resources
        }

    def generate_report(self, quiz_results, topic):
        """Generate a beautiful summary report with SWOT and recommendations."""
        swot = self.generate_swot_analysis(quiz_results, topic)
        recommendations = self.get_recommendations(topic, swot["Score"])

        # Generate summary and discussion
        summary = f"""
        <p style="font-size: 18px; color: #333;">
            Based on your quiz performance, you scored <strong>{swot['Score']:.2f}%</strong>. 
            Here's a breakdown of your strengths, weaknesses, and recommendations to help you improve.
        </p>
        """

        # Beautifully formatted report with HTML/CSS
        report = f"""
        <div class="report-card">
            <h2 style="color: #0288D1; text-align: center;">Personalized Report for {topic} Quiz</h2>
            {summary}
            <h3 style="color: #0288D1;">SWOT Analysis</h3>
            <div style="display: flex; gap: 20px;">
                <div style="flex: 1; background-color: #e8f5e9; padding: 15px; border-radius: 5px;">
                    <h4 style="color: #4CAF50;">Strengths</h4>
                    {self._format_list_html(swot['Strengths'], '#4CAF50')}
                </div>
                <div style="flex: 1; background-color: #ffebee; padding: 15px; border-radius: 5px;">
                    <h4 style="color: #D32F2F;">Weaknesses</h4>
                    {self._format_list_html(swot['Weaknesses'], '#D32F2F')}
                </div>
            </div>
            <div style="display: flex; gap: 20px; margin-top: 20px;">
                <div style="flex: 1; background-color: #e0f7fa; padding: 15px; border-radius: 5px;">
                    <h4 style="color: #0288D1;">Opportunities</h4>
                    {self._format_list_html(swot['Opportunities'], '#0288D1')}
                </div>
                <div style="flex: 1; background-color: #fff3e0; padding: 15px; border-radius: 5px;">
                    <h4 style="color: #F57C00;">Threats</h4>
                    {self._format_list_html(swot['Threats'], '#F57C00')}
                </div>
            </div>

            <h3 style="color: #0288D1; margin-top: 20px;">Recommendations</h3>
            <div style="background-color: #eceff1; padding: 15px; border-radius: 5px;">
                <h4 style="color: #455A64;">GNN-Based Learning Path</h4>
                {self._format_list_html(recommendations['GNN_Recommendations'], '#455A64')}
                <h4 style="color: #455A64; margin-top: 15px;">YouTube Video Links</h4>
                {self._format_list_html(recommendations['YouTube_Links'], '#455A64', is_link=True)}
                <h4 style="color: #455A64; margin-top: 15px;">Web Study Resources</h4>
                {self._format_list_html(recommendations['Web_Resources'], '#455A64', is_link=True)}
            </div>
        </div>
        """

        return report

    def _format_list_html(self, items, color, is_link=False):
        if not items:
            return "<p style='color: #666;'>- None identified</p>"
        if is_link:
            return "\n".join([f"<p style='color: {color}; margin: 5px 0;'><a class='video-link' href='{item}' target='_blank'>{item}</a></p>" for item in items])
        return "\n".join([f"<p style='color: {color}; margin: 5px 0;'>- {item}</p>" for item in items])