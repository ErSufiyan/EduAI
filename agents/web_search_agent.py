# agents/web_search_agent.py
from phi.agent import Agent
from phi.tools.duckduckgo import DuckDuckGo

class WebSearchAgent(Agent):
    def __init__(self):
        super().__init__(
            tools=[DuckDuckGo()],
            show_tool_calls=True,
            description="Searches the web for educational resources."
        )