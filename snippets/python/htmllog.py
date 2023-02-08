"""
Experimental module to log messages to HTML
"""

def dbg(tag, content, **kwargs):
    """
    kwargs are turned into CSS properties
    """
    content = content.strip().replace("<", "&lt;").replace(">", "&gt;").replace("\\n", "<br>").replace("\n", "<br>")
    style = "\n".join(f"{k.replace('_', '-')}: {v}" for k, v in kwargs.items())
    print(f"<{tag} style='{style}'>{content}</{tag}>")
