from typing import Any, Dict, List, Optional

class MultiServerMCPClient:
    def __init__(self, *args: Any, **kwargs: Any) -> None:
        pass
    def get_tools(self) -> List[Any]:
        return []
    async def __aenter__(self) -> "MultiServerMCPClient":
        return self
    async def __aexit__(self, *args: Any) -> None:
        pass
