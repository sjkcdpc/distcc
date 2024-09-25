# 概述
# 部署
```shell

```

# 客户端验证

```shell
# yum install distcc
# cat a.cpp 
#include <iostream>
 
int main() {
    std::cout << "Hello, World!" << std::endl;
    return 0;
}

# yum install gcc-c++
# distcc g++ a.cpp 
# ./a.out 
Hello, World!


export DISTCC_HOSTS="10.58.17.203:/64,lzo"
export DISTCC_HOSTS="10.150.2.96:3000/32 10.150.1.137:3000/32 10.150.3.252:3000/32"
export DISTCC_LOG=distcc.log
export DISTCC_VERBOSE=1

# distcc --show-hosts
172.16.18.216/32

# distccmon-text 1

端口: 3632
```

> - 64表示：客户端发送到203这台机器的任务最多为64个，与cpu的core数量有关系
> - lzo: 允许LZO压缩
> - cpp: 使能distcc-pump mode,与pump mode 有关