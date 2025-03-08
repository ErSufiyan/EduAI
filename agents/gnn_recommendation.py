# agents/gnn_recommendation.py
class GNNRecommendation:
    def recommend(self, topic, score):
        """Simulate GNN-based recommendations based on topic and score."""
        if score >= 80:
            return [f"Deep dive into advanced {topic} concepts.", f"Practice complex {topic} problems."]
        elif score >= 60:
            return [f"Reinforce {topic} basics with exercises.", f"Explore intermediate {topic} topics."]
        else:
            return [f"Review {topic} fundamentals step-by-step.", f"Focus on core {topic} principles."]