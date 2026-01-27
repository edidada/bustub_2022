# my
https://15445.courses.cs.cmu.edu/fall2022/project4/

# lab0
$ cd build
$ make starter_trie_test
$ ./test/starter_trie_test

$ make format
$ make check-lint
$ make check-clang-tidy-p0

# lab1
$ mkdir build
$ cd build
$ make extendible_hash_table_test -j$(nproc)
$ ./test/extendible_hash_table_test

$ make format
$ make check-lint
$ make check-clang-tidy-p1

# lab2
Task #1 - B+Tree Pages
Task #2 - B+Tree Data Structure (Insertion, Deletion, Point Search)
Checkpoint #2 — Due Date: Oct 26 @ 11:59pm

Task #3 - Index Iterator
Task #4 - Concurrent Index

$ mkdir build
$ cd build
$ make b_plus_tree_insert_test -j$(nproc)
$ ./test/b_plus_tree_insert_test

$ # To build the tool
$ mkdir build
$ cd build
$ make b_plus_tree_printer -j$(nproc)
$ ./bin/b_plus_tree_printer
>> ... USAGE ...
>> 5 5 // set leaf node and internal node max size to be 5
>> f input.txt // Insert into the tree with some inserts
>> g my-tree.dot // output the tree to dot format
>> q // Quit the test (Or use another terminal)

Checkpoint #1
Every file for Project 1 (6 in total)
src/include/storage/page/b_plus_tree_page.h
src/storage/page/b_plus_tree_page.cpp
src/include/storage/page/b_plus_tree_internal_page.h
src/storage/page/b_plus_tree_internal_page.cpp
src/include/storage/page/b_plus_tree_leaf_page.h
src/storage/page/b_plus_tree_leaf_page.cpp
src/include/storage/index/b_plus_tree.h
src/storage/index/b_plus_tree.cpp
src/include/storage/index/index_iterator.h
src/storage/index/index_iterator.cpp

Checkpoint#2
Every file for Project 1 (6 in total)
src/include/storage/page/b_plus_tree_page.h
src/storage/page/b_plus_tree_page.cpp
src/include/storage/page/b_plus_tree_internal_page.h
src/storage/page/b_plus_tree_internal_page.cpp
src/include/storage/page/b_plus_tree_leaf_page.h
src/storage/page/b_plus_tree_leaf_page.cpp
src/include/storage/index/b_plus_tree.h
src/storage/index/b_plus_tree.cpp
src/include/storage/index/index_iterator.h
src/storage/index/index_iterator.cpp

# lab3
Task #1: Access Method Executors
Task #2: Aggregation and Join Executors
Task #3: Sort + Limit Executors and Top-N Optimization
Leaderboard Task (Optional)

cd build && make -j$(nproc) shell
./bin/bustub-shell

make -j$(nproc) sqllogictest
./bin/bustub-sqllogictest ../test/sql/p3.00-primer.slt --verbose

make format
make check-lint
make check-clang-tidy-p3

# lab4

Task #1 - Lock Manager
Task #2 - Deadlock Detection
Task #3 - Concurrent Query Execution


cd build
make lock_manager_test
make deadlock_detection_test
make transaction_test
./test/lock_manager_test
./test/deadlock_detection_test
./test/transaction_test

make format
make check-lint
make check-clang-tidy-p4

测试用的可执行程序
binder_test

buffer_pool_manager_instance_test
clock_replacer_test
lru_k_replacer_test
lru_replacer_test
catalog_test
rwlatch_test

deadlock_detection_test                                                                                   
lock_manager_compability_test                                                                             
lock_manager_isolation_test                                                                               
lock_manager_test                                                                                         
transaction_test

hash_table_page_test
hash_table_test

extendible_hash_table_test

starter_trie_test

recovery_test

b_plus_tree_concurrent_test                                                                               
b_plus_tree_contention_test                                                                               
b_plus_tree_delete_test                                                                                   
b_plus_tree_insert_test                                                                                   
disk_manager_test                                                                                         
tmp_tuple_page_test

tuple_test

type_test

cmake --build . --target help
这是 CMake 项目的完整目标列表。我帮你分析和分类这些目标：

一、分类解析
1. 可执行文件（Applications）

bustub               # 主程序
bustub-shell         # 交互式Shell
bustub-sqllogictest  # SQL逻辑测试工具
bustub-terrier-bench # 性能测试工具
shell                # Shell工具
sqllogictest         # SQL逻辑测试
terrier-bench        # 性能测试
b_plus_tree_printer  # B+树打印工具

2. 静态库（Static Libraries）

libbustub.a                 # 核心库
libbustub_linenoise.a       # 命令行编辑库
libbustub_murmur3.a         # 哈希库
libduckdb_pg_query.a        # PostgreSQL查询解析库
libfmtd.a                   # fmt格式化库
libfort.a                   # 表格格式化库
libgmock.a                  # Google Mock库
libgmock_main.a
libgtest.a                  # Google Test库
libgtest_main.a
libutf8proc.a               # UTF-8处理库

3. 测试目标（Unit Tests）

# 各个模块的单元测试
binder_test
buffer_pool_manager_instance_test
clock_replacer_test
lru_k_replacer_test
lru_replacer_test
catalog_test
rwlatch_test
deadlock_detection_test
lock_manager_compability_test
lock_manager_isolation_test
lock_manager_test
transaction_test
hash_table_page_test
hash_table_test
extendible_hash_table_test
starter_trie_test
recovery_test
b_plus_tree_concurrent_test
b_plus_tree_contention_test
b_plus_tree_delete_test
b_plus_tree_insert_test
disk_manager_test
tmp_tuple_page_test
tuple_test
type_test

4. 项目测试（Project Tests - P3）

# 项目3的相关测试
p3.01-seqscan_test       # 顺序扫描测试
p3.02-insert_test        # 插入测试
p3.03-delete_test        # 删除测试
p3.04-index-scan_test    # 索引扫描测试
p3.05-empty-table_test   # 空表测试
p3.06-simple-agg_test    # 简单聚合测试
p3.07-group-agg-1_test   # 分组聚合测试1
p3.08-group-agg-2_test   # 分组聚合测试2
p3.09-simple-join_test   # 简单连接测试
p3.10-multi-way-join_test # 多表连接测试
p3.11-repeat-execute_test # 重复执行测试
p3.12-nested-index-join_test # 嵌套索引连接测试
p3.13-sort-limit_test    # 排序限制测试
p3.14-topn_test          # TopN查询测试
p3.15-integration-1_test # 集成测试1
p3.16-integration-2_test # 集成测试2
p3.leaderboard-q1_test   # 排行榜查询1
p3.leaderboard-q2_test   # 排行榜查询2
p3.leaderboard-q3_test   # 排行榜查询3
test-p3                  # 运行所有P3测试

5. 工具命令（Utility Commands）
format                  # 代码格式化
check-format            # 检查代码格式
check-lint              # 代码lint检查
check-clang-tidy        # clang-tidy检查
fix-clang-tidy          # 修复clang-tidy问题
check-clang-tidy-diff   # 检查差异
fix-clang-tidy-diff     # 修复差异
check-clang-tidy-p0     # 项目0检查
check-clang-tidy-p1     # 项目1检查
submit-p1              # 提交项目1
check-clang-tidy-p2     # 项目2检查
submit-p2              # 提交项目2
check-clang-tidy-p3     # 项目3检查
submit-p3              # 提交项目3
check-clang-tidy-p4     # 项目4检查
submit-p4              # 提交项目4

6. 构建系统命令（Build System）
clean                   # 清理构建
rebuild_cache           # 重新生成缓存
edit_cache              # 编辑缓存
package                 # 打包
package_source          # 源码打包
install                 # 安装
install/local           # 本地安装
install/strip           # 剥离符号安装

7. 测试套件命令
build-tests             # 构建所有测试
check-tests             # 检查测试
check-public-ci-tests   # 检查公共CI测试

二、常用命令示例
运行程序
# 运行交互式Shell
cmake --build . --target shell
./shell

# 或直接运行
./tools/shell/bustub-shell

运行测试
# 运行单个测试
cmake --build . --target buffer_pool_manager_instance_test
./test/buffer_pool_manager_instance_test

# 运行所有测试
cmake --build . --target check-tests


项目测试

# 运行P3项目测试
cmake --build . --target test-p3

# 运行特定测试
cmake --build . --target p3.01-seqscan_test
./test/p3.01-seqscan_test

代码质量
# 格式化代码
cmake --build . --target format

# 检查代码格式
cmake --build . --target check-format

# 检查lint
cmake --build . --target check-lint


三、目录结构对应

从输出可以看出项目的模块结构：

src/
├── binder/          # SQL解析和绑定
├── buffer/          # 缓冲池管理
├── catalog/         # 目录管理
├── common/          # 公共工具
├── concurrency/     # 并发控制
├── container/       # 容器（哈希表等）
├── execution/       # 查询执行
├── recovery/        # 恢复系统
├── storage/         # 存储管理
├── type/            # 类型系统
├── planner/         # 查询计划
├── primer/          # 基础组件
├── optimizer/       # 查询优化
└── ...              # 其他模块

四、最重要的目标
对于你来说，最重要的可能是：
1. 开发调试：
   cmake --build . --target shell

2. 运行测试：
   cmake --build . --target check-tests

3. 项目提交：
   # 项目3提交
   cmake --build . --target submit-p3

   # 项目4提交
   cmake --build . --target submit-p4

4. 代码质量：
   cmake --build . --target format
   cmake --build . --target check-clang-tidy

五、使用建议
查看简短帮助

# 只看主要目标
cmake --build . --target help | grep -E "^[a-z_]+[a-z0-9_]*$" | head -30

创建常用别名
# 在 ~/.bashrc 中添加
alias bdb='cd /mnt/d/develops/git/github/cpp/bustub_2022/cmake-build-debug-wsl24_clang'
alias bmake='cmake --build .'
alias btest='bmake && ./test/'
alias bshell='bmake && ./tools/shell/bustub-shell'

这个列表显示了 CMake 项目的完整构建目标体系，包括程序、库、测试和各种工具命令。

cmake --build . --target submit-p3
project3-submission.zip

cmake --build . --target submit-p4
project4-submission.zip