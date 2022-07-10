<!--Manipulating data in the bash shell-->

<!--Truncate-->
head
tail

<!--Filter-->
grep
cat

<!--Search-->
find
locate

# shell-truncation
Shell Data Techniques with shell

![Shell Data Techniques](https://user-images.githubusercontent.com/58792/145632563-0603e931-ea7e-4ffb-a30d-5c6250acb951.png)



# Truncation
## grab the top ten

```bash
head file.txt

#grab first 5
head -n file.txt

#grab last ten
tail file.txt

#grab last three
tail -n 3 file.txt

#Randomly select lines
shuf -n 3 file.txt 

```
# Filter
## grep pattern

```bash

# Find pattern
grep apple filter-file.txt 

# Count occurrences
grep -c apple filter-file.txt 

# Find either pattern
grep -e apple -e pear filter-file.txt 

# Count occurrences of both patterns
grep -c -e apple -e pear filter-file.txt

# Show all lines that DO NOT contain pattern
grep -v apple filter-file.txt 

grep -v -e apple -e cherry filter-file.txt
grep -v apple filter-file.txt | grep -c apple
grep -v apple filter-file.txt | grep -c pear
``` 

# Search
## Find files

```bash
## Find files

# Find all bash scripts
find . -name "*.sh"

# Find all CSV files
find . -name "*.csv"

# Find all executable non-invisible files
find . -perm /+x ! -name '.*' -type f

# Find all executable non-invisible files and ignore .git directories

find . -perm /+x -not -path '*/\.*' -type f
```

