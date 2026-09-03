from typing import Any, Dict, List, Optional, Protocol, runtime_checkable

@runtime_checkable
class Callbacks(Protocol):
    def __call__(self, *args: Any, **kwargs: Any) -> Any: ...

class CallbackContext:
    pass
