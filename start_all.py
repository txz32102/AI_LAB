## can you write the python code that execute some bash command, what i want is each bash command is executed in a single bash or shell, not in a total shell, all commands are sh local.sh start, sh local.sh cnn, sh local.sh dodrio, sh local.sh wizmap, sh local.sh ganlab
"""musong@musong:~/Desktop/AI_LAB$ python3 start_all.py 
Starting the application...

> reveal@0.1.0 serve
> vue-cli-service serve

 INFO  Starting development server...


 DONE  Compiled successfully in 812ms                                             11:58:43 AM


  App running at:
  - Local:   http://localhost:8080/ 
  - Network: http://192.168.101.168:8080/

  Note that the development build is not optimized.
  To create a production build, run yarn build.
, please note that every command will listen to a local port, i want run this all by one, not one by one
"""

import subprocess
import threading


# Function to execute a command in a subprocess
def execute_command(command):
    subprocess.run(command, shell=True)


# List of commands to be executed
commands = [
    "sh local.sh start",
    "sh local.sh cnnlab",
    "sh local.sh transformerlab",
    "sh local.sh knowledgelab",
    "sh local.sh ganlab",
]

# Creating and starting a thread for each command
threads = []
for command in commands:
    thread = threading.Thread(target=execute_command, args=(command,))
    threads.append(thread)
    thread.start()

# Wait for all threads to complete
for thread in threads:
    thread.join()

print("All applications have been started.")
