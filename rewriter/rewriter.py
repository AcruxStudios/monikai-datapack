import os

datapack_dir = '..\\'
rewritten_dir = 'rewritten'
replacement_name = input("Your name: ")
replacement_nick = input("Your nick: ")
replacement_graphic_name = input("The character name")
replacement_ai_name = replacement_graphic_name + "_"
replacement_scoreboard_prefix = replacement_graphic_name + "AI"
replacement_team_name = replacement_graphic_name+"_TEAM"
replacement_namespace = replacement_graphic_name

replacements = {
    "Alejo" : replacement_name,
    "Ale" : replacement_nick,
    "Monika" : replacement_graphic_name,
    "Monika_" : replacement_ai_name,
    "MONIKAI" : replacement_scoreboard_prefix,
    "MonikAi" : replacement_team_name,
    "monikai" : replacement_graphic_name
}


def GetFilesInTree(directory):
    file_list = []
    for root, directories, files in os.walk(directory):
        for file in files:
            file_list.append(os.path.join(root, file))
    return file_list

def GetDatapackFiles():
    return [file for file in GetFilesInTree(datapack_dir) if not ".git" in file and not "rewriter.py" in file]

def ReadFile(file_path):
    file_contents = None
    try:
        with open(file_path, 'r') as file:
            file_contents = file.read()
            print(file_contents)
    except FileNotFoundError:
        print("File not found.")
    except Exception as e:
        print("An error occurred:", e)
    return file_contents

def WriteFile(file_path,content):
    directory = os.path.dirname(file_path)
    try:
        # Check if directory exists, if not, create it
        if not os.path.exists(directory):
            os.makedirs(directory)
    
        with open(file_path, 'w') as file:
            file.write(content)
            print("Write operation successful.")
    except Exception as e:
        print("An error occurred:", e)


def RewriteFile(datapack_file):
    datapack_file_content = ReadFile(datapack_file)
    rewritten_file = datapack_file_content
    for replacementKey in replacements.keys():
        rewritten_file = rewritten_file.replace(replacementKey,replacements[replacementKey])
    rewritten_file_dest = rewritten_dir + '\\' + (datapack_file.replace(datapack_dir,"").replace("monikai",replacement_namespace))
    WriteFile(rewritten_file_dest,rewritten_file)
    
def RewriteAll():
    datapack_files = GetDatapackFiles()
    for datapack_file in datapack_files:
        RewriteFile(datapack_file)

RewriteAll()
