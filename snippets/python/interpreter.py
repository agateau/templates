from code import InteractiveConsole


# Copy this where you want to get an interactive console running with access to
# the local variables
csl = InteractiveConsole(locals=locals())
csl.interact()
