import os
import subprocess
from pynput.keyboard import Key, Controller
import time

true = True
false = False

def initialize(project_name):
    crash = ""
    for i in range(len(project_name)):
        if project_name[i] == ' ':
            project_name = project_name[:i] + '_' + project_name[i+1:]

    os.chdir("/Users/craigsirota/Desktop")
    os.mkdir(project_name)
    os.chdir(project_name)
    os.system("echo {0} > README.md".format("**" + project_name + "**\n"))
    os.system("git init")
    os.system("git add *")
    os.system("git commit -m \"Initial Commit\"")
    try:
        crash = subprocess.call("git remote add origin https://github.com/csirota97/{0}.git".format(project_name), shell=true)
    except OSError:
        print(crash,"\nThe Repo Has Not Been Created")
        print("git remote add origin https://github.com/burneraccount-del/{0}.git".format(project_name))

        os.chdir("/Users/craigsirota/Desktop")
        os.system("rm -R -f {0}/".format(project_name))
        os.system("pwd")
        print("rm -R -f {0}/".format(project_name))


#        os.system("rmdir .git")
        os.system("open http://github.com/new")
        return false

    os.system("git push -u origin master")

initialize("TestRepo")
