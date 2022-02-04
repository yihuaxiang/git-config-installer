# git-config-installer
git config installer

完整内容：[git-config-installer](https://fudongdong.com/tech/git.html)

> `git` 配置文件为：`~/.gitconfig`，下文涉及到的配置便在该文件中

### git alias 配置

有一个小技巧可以使你的 `Git `体验更简单、容易、熟悉：别名。

`Git `并不会在你输入部分命令时自动推断出你想要的命令。 如果不想每次都输入完整的 `Git `命令，可以通过 `git config` 文件来轻松地为每一个命令设置一个别名。 这里有一些例子你可以试试：

```shell
br = branch
cm = commit
ck = checkout
```

这意味着，当要输入 `git commit` 时，只需要输入 `git cm` 随着你继续不断地使用 Git，可能也会经常使用其他命令，所以创建别名时不要犹豫。

可以看出，`Git` 只是简单地将别名替换为对应的命令。 然而，你可能想要执行外部命令，而不是一个 `Git `子命令。 如果是那样的话，可以在命令前面加入 ! 符号。 如果你自己要写一些与 `Git `仓库协作的工具的话，那会很有用。 我们现在演示将 `git alias` 定义为 `git 查看别名`的 的别名：

```shell
alias = ! git config --get-regexp ^alias\\. | sed -e s/^alias\\.// -e s/\\ /\\ =\\ /
```

我的完整别名配置如下

```shell
# 通过更友好的界面来查看日志
lg = log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit

# 简化 git status 的长度
st = status

# 使用 vimdiff 进行代码对比
dft = difftool -t vimdiff

# 简化 git 子命令 长度
br = branch
cm = commit
ck = checkout
cp = cherry-pick
cr = cherry -v
pom = pull origin master

# 于创建了查看别名的子命令，通过调用 git config 实现
alias = ! git config --get-regexp ^alias\\. | sed -e s/^alias\\.// -e s/\\ /\\ =\\ /

```

![](https://fudongdong-statics.oss-cn-beijing.aliyuncs.com/images/20220204/da2b9ec480b74e9e95ecfd5d59572d7a.png)


### git 其他配置

另外，相较`git`内置对比工具，`vimdiff`更为强大、便利，一下配置是将对比工具进行了替换

```shell
[merge]
	tool = vimdiff
[diff]
	tool = vimdiff
```

![](https://fudongdong-statics.oss-cn-beijing.aliyuncs.com/images/20220204/17be65c295f44100bb7802a6f43d8ec0.png)



### git 配置安装器

如果想使用我以上的配置，可以直接想配置复制到`.gitconfig`文件中

另外，我也提供了安装工具，通过运行安装工具可以快速配置好以上功能

#### 安装 git-config-installer

```shell
npm install -g git-config-installer
```

#### 安装 git 配置

````shell
git_config_install
````


![asdf.gif](https://fudongdong-statics.oss-cn-beijing.aliyuncs.com/images/20220204/0639584cfc374fcfb613b042f6363780.gif)
