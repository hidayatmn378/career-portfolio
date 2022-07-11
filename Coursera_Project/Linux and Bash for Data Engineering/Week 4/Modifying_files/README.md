<!--locate command -->
>>sudo updatedb
>>locate *.txt

<!--find command-->
>>find . -name *.txt

<!--time to locate or find-->
>>time locate *.txt
>>time find . -name *.txt

<!--create multiple file-->
>>touch foo{0..10}.txt

<!--delete multiple file-->
>> rm -f *.txt

<!--modifying the filesystem-->
<!--moving files and directories-->
<!--make directories-->
>>mkdir foo
<!--make multiple directories-->
>>mkdir -p f1/f2/f3/f4
>>ls -lR f1

<!--move file-->
>>mv  f1 ../
<!--resync file-->
>>mkdir ori
>>touch ori/one.txt
>>touch ori/two.txt
>>ls ori
>>mkdir -p file2rsync/ori
>>touch file2rsync/ori/one.txt
>>ls file2rsync/ori/
>>rsync -av ori/ file2rsync/ori/
>>ls file2rsync/ori/


# modify-files-directories
Notes on modifying files and directories in linux

![IMG_29BAAF801B32-1](https://user-images.githubusercontent.com/58792/146691100-78f4abbc-e22f-41fd-bc9f-fbde67ffc92c.jpeg)

## Create, Copy, Move and Sync Data

```bash

# Make a directory
mkdir foo

# Make many directories 
mkdir -p bar/bam/biz

# Create files
touch bar/one.txt && touch bam/two.txt && touch biz/three.txt

# Move files
mv bar /tmp/

# copy files
cp -r bam /tmp/

# sync files (keeps both directories the same)
rsync -av foo/ newspot/foo/

# delete directory
mkdir noneDir
rmdir noneDir

# remove folder
rm -rf biz

```

## Permissions

```bash
Name    Owner   Group   Other
access  r w x   r w x   r w x
binary  4 2 1   4 2 1   4 2 1
enabled 1 1 1   1 0 1   1 0 0

result  4 2 1   4 0 1   400

total     7       5       4       
```
<!--give permission (r,w,x)-->
>>chmod 777 add-loop.sh 
<!--give permission (r,x)-->
>>chmod +x add-loop.sh 
<!--give permission (r)-->
>>chmod 400 add-loop.sh

## Archiving

### Zip

```
# archive
zip -r archives/foo.zip foo
cd archives
#unarchive
unzip foo.zip
```

### Tar

```
# archive
tar -zcvf archives/foo.tgz foo

#unarchive
tar -zxvf foo.tgz
```






