#Cria lista de livros e a admnistra. Abre item selecinado da lista junto com arquivo de texto em vim para tomar notas
import os
import subprocess
import sys


def main():
    args = sys.argv
    if len(args)>1:
        addlist(args[1])
    else:
        reader()

#Lê livro atual da lista e deleta livro finalizado
def reader():
    with open('/home/across/.scripts/python3/now/now.t', 'r') as read_obj:
        data = read_obj.read().splitlines(True)
        livro = data[0]
        print(livro)
        livro = livro[:-1]
    with open('/home/across/.scripts/python3/now/livros/'+livro+'.fim', 'r') as f:
        try:
            last_line = f.readlines()[-1]
        except IndexError as nope:
            last_line = ''
    if "--FIM--" in last_line:
        with open('/home/across/.scripts/python3/now/now.t', 'w') as write_obj:
            write_obj.writelines(data[1:])
        reader()
        return false
    if '.pdf' in livro:
        output = subprocess.Popen(["okular '/home/across/.scripts/python3/now/livros/"+livro+"'"], shell=True, stdout=None, stderr=None, preexec_fn=os.setpgrp )
        output2 = subprocess.run(['vim', '/home/across/.scripts/python3/now/livros/'+livro+'.fim'])
    if 'epub' in livro:
        output = subprocess.Popen(["tmux splitw -h -p 38"], shell=True, stdout=None, stderr=None, preexec_fn=os.setpgrp )
        output2 = subprocess.Popen(["epr '/home/across/.scripts/python3/now/livros/"+livro+"'"], shell=True, stdout=None, stderr=None, preexec_fn=os.setpgrp)
        subprocess.run(["tmux send -t 2 vim '/home/across/.scripts/python3/now/livros/'"+livro+".fim'"], shell=True)

#COPIA ARQUIVO E CRIA LISTA
def addlist(livro):
    b = check_if_string_in_file('/home/across/.scripts/python3/now/now.t', livro)
    a = os.path.isfile(livro)
    if a and not b:
        subprocess.run(['cp',livro, '/home/across/.scripts/python3/now/livros/'+livro])
        subprocess.run(['touch', '/home/across/.scripts/python3/now/livros/'+livro+'.fim'])
        fout = open('/home/across/.scripts/python3/now/now.t', 'a')
        fout.write(livro+'\n')
        fout.close()

def check_if_string_in_file(file_name, string_to_search):
    """ Check if any line in the file contains given string """
    # Open the file in read only mode
    with open(file_name, 'r') as read_obj:
        # Read all lines in the file one by one
        for line in read_obj:
            # For each line, check if line contains the string
            if string_to_search in line:
                return True
    return False

if __name__ == "__main__":
    main()
