##-------------------------- Imports ----------------------------------##
import strformat #String formatting
import std/os # clearing screen.
##-------------------------- Imports ----------------------------------##





##-------------------------- Functions ----------------------------------##
proc clear(): string {.discardable.} =
    discard os.execShellCmd("clear")
##-------------------------- Functions ----------------------------------##





##-------------------------- Main ----------------------------------##
clear()
if os.execShellCmd("docker image ls && echo $?") == 0:
    clear()
    echo "Running Ciphey..."
    echo ""
    echo "Examples: "
    echo "-t aGVsbG8gbXkgbmFtZSBpcyBiZWU="
    echo "--help"
    echo ""
    echo ""
    echo "Press ctrl+c to exit"
    echo "Command input"
    var ciphey_command: string = readLine(stdin)
    clear()
    discard os.execShellCmd(fmt"docker run -it --rm remnux/ciphey {ciphey_command}")
else:
    clear()
    echo "Starting docker & running Ciphey..."
    echo ""
    echo "Examples: "
    echo "-t aGVsbG8gbXkgbmFtZSBpcyBiZWU="
    echo "--help"
    echo ""
    echo ""
    echo "Press ctrl+c to exit"
    discard os.execShellCmd("systemctl start docker")
    echo "Command input"
    var ciphey_command: string = readLine(stdin)
    clear()
    discard os.execShellCmd(fmt"docker run -it --rm remnux/ciphey {ciphey_command}")

##-------------------------- Main ----------------------------------##


