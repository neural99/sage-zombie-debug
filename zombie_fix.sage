import sage.interfaces.sage0
import sage.interfaces.quit

def reap_zombies():
    while True:
        try:
            pid, exit_code = os.waitpid(-1, 0)
            print "Reaping " + str(pid)
        except OSError:
            break

def create_new_instances():
    # Create instance
    s = sage.interfaces.sage0.Sage()
    s('4')
    # Stop/delete instance
    s.quit()
    del s
    # Force quit
    sage.interfaces.quit.expect_quitall(verbose=True)
    # Reap zombies
    reap_zombies()

while True:
    create_new_instances()
    raw_input('continue?')
