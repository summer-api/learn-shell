#!.bin.bash
# 显示转义字符====
# echo "\"It is a test\"" # "It is a test"


# get var
# name="OK"
# echo "$name It is a test" # OK It is a test



# 如果变量与其它字符相连的话，需要使用大括号（{ }）：
# mouth=8
# echo "${mouth}-1-2009" # 8-1-2009



# 显示换行or not====
# echo "OK!\n"
# echo "It is a test" # will be a blank line
# echo "OK!\c"
# echo "It is a test" # OK!It si a test



# 显示结果重定向至文件 ========
# echo "hand feat" > myfile.txt # the result wiil be stored in myfile.txt



# 使用单引号原样输出=====
echo '$name\"' # output: $name\"



# 显示命令执行结果===
echo `date` # 2016年 11月 24日 星期四 21:41:27 CST



# printf用于格式化输出, echo增强版。
# printf 由 POSIX 标准所定义，移植性要比 echo 好
# but必须显式添加换行符(\n)
printf "Hello, Shell\n"



# printf 命令不用加括号 =========================
# format-string 可以没有引号，但最好加上，单引号双引号均可。
# 参数多于格式控制符(%)时，format-string 可以重用，可以将所有参数都转换。
# arguments 使用空格分隔，不用逗号。
# 根据POSIX标准，浮点格式%e、%E、%f、%g与%G是“不需要被支持”。
# 这是因为awk支持浮点预算，且有它自己的printf语句。
# 这样Shell程序中需要将浮点数值进行格式化的打印时，
# 可使用小型的awk程序实现。
# 然而，内建于bash、ksh93和zsh中的printf命令都支持浮点格式

# format-string为双引号
printf "%d %s\n" 1 "abc"
# 1 abc

# 单引号与双引号效果一样
printf '%d %s\n' 1 "abc"
# 1 abc

# 没有引号也可以输出
printf %s abcdef
# abcdef

# 格式只指定了一个参数，
# 但多出的参数仍然会按照该格式输出，format-string 被重用
printf %s abc def
# abcdef

printf "%s\n" abc def
# abc
# def

printf "%s %s %s\n" a b c d e f g h i j
# a b c
# d e f
# g h i
# j

# 如果没有 arguments，那么 %s 用NULL代替，%d 用 0 代替
printf "%s and %d \n"
# and 0

# 如果以 %d 的格式来显示字符串，那么会有警告，提示无效的数字，此时默认置为 0
printf "The first program always prints'%s,%d\n'" Hello Shell

# -bash: printf: Shell: invalid number
# The first program always prints 'Hello,0'


