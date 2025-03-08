# agents/youtube_agent.py
from phi.agent import Agent
from phi.tools.youtube_tools import YouTubeTools

class YouTubeAgent(Agent):
    def __init__(self):
        super().__init__(
            tools=[YouTubeTools()],
            show_tool_calls=True,
            description="Fetches YouTube video recommendations based on a query."
        )