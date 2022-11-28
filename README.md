# 42_Pipex
pipex imitates a pipe command with input file and output file. For it to work, you need to pass 4 arguments in the following pattern:
./pipex file1 cmd1 cmd2 file2
which imitates the behaviour of the builtin:
< file1 cmd1 | cmd2 > file2

Bonus:
multiple pipes work, example:
./pipex file1 cmd1 cmd2 cmd3 ... file2
imitates:
< file1 cmd1 | cmd2 | cmd3 | ... > file2
