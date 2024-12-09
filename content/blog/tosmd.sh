#!/bin/bash

# 获取dir目录下所有的md文件
md_files=$(find ~/hub/key2demo -type f -name "*.md")

# 遍历每个md文件
for file in $md_files; do
    # 生成新的文件名，将扩展名改为.smd
    base_file=$(basename $file)
    new_file=$(echo $base_file | sed -e 's/\.md/\.smd/')

    # 将head.smd的内容添加到原文件开头，并生成新文件
    cat ./head.smd $file > $new_file

    echo "已成功处理文件:$file,base:$base_file,生成新文件: $new_file"
done
