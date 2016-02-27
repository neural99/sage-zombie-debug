import sage.interfaces.sage0
import sage.interfaces.quit

def create_new_instances():
    s = sage.interfaces.sage0.Sage()
    s('4')
    del s

print "Create instances"
create_new_instances()
raw_input('continue?')
print "Run expect_quit"
sage.interfaces.quit.expect_quitall(verbose=True)
raw_input('continue?')
