# shell-pipes


![-7-70](https://user-images.githubusercontent.com/58792/141686419-123fef54-811f-4be7-93f0-98fccd7dae35.png)
![IPES](https://user-images.githubusercontent.com/58792/141686425-ebd2e48c-2949-4d15-bc26-0c541a924d61.png)

## Examples

### Pipeline
```
ls -l /usr/bin | wc -l 
ls -l /usr/bin | wc -l > out.txt
```
### Conditional

```
ls -l /wrongpath && touch newfile.txt 
ls -l /usr/bin && touch newfile.txt
```
### Process files with Pipelines

```
STR=$'1. This is a line\n2. This is a line\n3. This is a line.'
echo "$STR"
echo "$STR" > lines.txt
cat lines.txt | sort -r | less
cat lines.txt | grep 3
```

### Append to a file

```
echo "something\n" > append.txt
wc -l append.txt
echo "another thing >> append.txt
wc -l append.txt
```

### Throw away stderr

```
ls -l /wrong/path 2> /dev/null
```

### Reading file parts

```
tail -f tail -f /var/log/dpkg.log
head -n 2 tail -f /var/log/dpkg.log
tail -n 2 tail -f /var/log/dpkg.log
```

### Using History

```
history | less
history | grep tail
!1
!!
```


# Coursera-DE-C2-Shell-Piping
Learn to pipe in the shell


An exploration of the Linux Shell

## Goal:   Learn the basics of shell piping

Let's practice some common shell piping operations

### Part 1: Count the files and directories in /usr/bin

1.  Pipe the output of `ls -l /usr/bin | wc -l` to count the files and directories in `/usr/bin`
2.  How many did you count?

### Part 2:  Create a new file with echo a

1.  Run the following command "echo 'hi'"
2.  Pipe this to a file by using "echo 'hi' > hello.txt"
3.  Now run `ls` to verify it exists
4.  count the words in the file `cat hello.txt | wc -w`
5.  How many did you count?

