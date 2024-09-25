# 概述
一款分布式C/C++编译器，它能有效地利用网络中多台计算机的计算资源来加速编译过程。尤其在处理大型项目时，DistCC的优势更为明显。此外，DistCC还配备了一款直观的监控工具，可实时追踪编译任务的状态，包括进度与资源使用情况等关键信息。

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
3633 web

docker run -it -d -p 3632-3633:3632-3633 ai-search-registry.cn-shanghai.cr.aliyuncs.com/devops/distcc

http://10.150.2.96:3633/
argv /distccd
<distccstats>
dcc_tcp_accept 0
dcc_rej_bad_req 0
dcc_rej_overload 0
dcc_compile_ok 0
dcc_compile_error 0
dcc_compile_timeout 0
dcc_cli_disconnect 0
dcc_other 0
dcc_longest_job none
dcc_longest_job_compiler none
dcc_longest_job_time_msecs -1
dcc_max_kids 6
dcc_avg_kids1 0
dcc_avg_kids2 0
dcc_avg_kids3 0
dcc_current_load 2
dcc_load1 0.02
dcc_load2 0.05
dcc_load3 0.05
dcc_num_compiles1 0
dcc_num_compiles2 0
dcc_num_compiles3 0
dcc_num_procstate_D 0
dcc_max_RSS 1884
dcc_max_RSS_name (distccd)
dcc_io_rate 0
dcc_free_space 193078 MB
</distccstats>
```

> - 64表示：客户端发送到203这台机器的任务最多为64个，与cpu的core数量有关系
> - lzo: 允许LZO压缩
> - cpp: 使能distcc-pump mode,与pump mode 有关

# 应用场景
- 适用于大型项目编译

# to-do-list
- [ ] andriod编译


# 参考资料
- https://www.distcc.org/
- https://hub.docker.com/r/ksmanis/gentoo-distcc
- https://mp.weixin.qq.com/s/cwUFq9lcNtiWn_Ro_tw0fw
- https://linux.die.net/man/1/distccd