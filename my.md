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


这个错误是 **macOS + Clang + libc++** 的标准库实现特有问题（libstdc++ / GCC 那边完全没这个限制）。

### 核心原因
- 你在测试代码里用了：
  ```cpp
  std::uniform_int_distribution<char> uniform_dist(0);
  ```
  生成随机 `char` 值（范围默认 [0, 255] 因为 char 通常 8-bit）。

- 在 **libc++**（Apple Clang 默认用的 C++ 标准库）中，`std::uniform_int_distribution` **明确不支持** `char`、`signed char`、`unsigned char` 作为模板参数（IntType）。  
  它只允许：short、int、long、long long 及其 unsigned 版本（C++ 标准没强制要求支持 char，但 libc++ 严格遵守并加了 static_assert 拒绝）。

- 从 libc++ 15.0 开始（macOS Sonoma / Xcode 15+ 基本都用 15+ 版本），这个限制被**严格执行**，直接 static_assert 失败，报错：
  ```
  static_assert(__libcpp_random_is_valid_inttype<char>::value, "IntType must be a supported integer type");
  ```

- GCC / libstdc++（Ubuntu 默认）把 `char` 当成普通整数类型，支持，没问题。所以你在 Ubuntu/GCC 上正常。

### 推荐修复方式（改测试代码，永久解决）

把 `char` 改成 `unsigned char` 或 `uint8_t`（推荐），因为生成随机**字节**（binary data）时，`unsigned char` 语义更清晰，也避开 signed char 的符号问题。

**最佳改法**（兼容 macOS Clang + Ubuntu GCC）：
```cpp
#include <cstdint>   // 加这个，引入 uint8_t

// 原：std::uniform_int_distribution<char> uniform_dist(0);
// 改成：
std::uniform_int_distribution<uint8_t> uniform_dist(0);  // 或 unsigned char

// 然后生成数据时：
uint8_t random_binary_data[BUSTUB_PAGE_SIZE];   // 改成 uint8_t 数组

for (uint8_t &i : random_binary_data) {
  i = uniform_dist(rng);
}

// 插入 '\0' 时也改：
random_binary_data[BUSTUB_PAGE_SIZE / 2] = 0;     // 直接用 0
random_binary_data[BUSTUB_PAGE_SIZE - 1] = 0;

// memcpy 时类型匹配：
std::memcpy(page0->GetData(), random_binary_data, BUSTUB_PAGE_SIZE);
EXPECT_EQ(0, std::memcmp(page0->GetData(), random_binary_data, BUSTUB_PAGE_SIZE));
```

- `uint8_t` 是 `<cstdint>` 里的固定宽度类型，libc++ 支持它作为扩展（从 libc++ 文档看，明确支持 int8_t / uint8_t）。
- 功能完全一样：生成 0~255 的随机字节。
- 数组用 `uint8_t` 更安全（避免 signed char 的符号扩展问题）。
### 其他可行方案（如果不想改数组类型）
1. 用 `unsigned int` 或 `int` 生成，再 cast：
   ```cpp
   std::uniform_int_distribution<unsigned int> uniform_dist(0, 255);
   // 然后
   for (size_t i = 0; i < BUSTUB_PAGE_SIZE; ++i) {
     random_binary_data[i] = static_cast<char>(uniform_dist(rng));
   }
   ```
2. 用 `std::uniform_int_distribution<int>`（最简单兼容）：
   ```cpp
   std::uniform_int_distribution<int> uniform_dist(0, 255);
   // 同上 cast
   ```
3. 如果你 fork 的是 2022 版本的老仓库，这个 test 很可能已经被上游修复（查官方 bustub master 的 test/buffer/buffer_pool_manager_instance_test.cpp，看看他们怎么写的）。
### 快速验证
改完后在 macOS 上重新编译：

```bash
cd build
cmake -DCMAKE_BUILD_TYPE=Debug ..
make buffer_pool_manager_instance_test
./bin/buffer_pool_manager_instance_test   # 或 ctest -R BinaryDataTest -VV
```

改成`uint8_t`后，macOS Clang就过了（因为 libc++允许int8_t/uint8_t作为扩展）。
这是 BusTub 测试代码里很常见的跨平台坑（macOS 用户经常踩），改成 uint8_t 就能一劳永逸。

```shell
/home/wdidada/cmake-3.30.1-linux-x86_64/bin/cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_MAKE_PROGRAM=/usr/local/bin/ninja -DCMAKE_C_COMPILER=/usr/bin/clang -DCMAKE_CXX_COMPILER=/usr/bin/clang++ -G Ninja -S /mnt/d/develops/git/github/cpp/bustub_2022 -B /mnt/d/develops/git/github/cpp/bustub_2022/cmake-build-debug-wsl24_clang
CMake Warning at CMakeLists.txt:43 (message):
!! We recommend that you use clang-12 for developing BusTub.  You're using
Clang 18.1.3, a different version.
```

```shell
/mnt/d/develops/git/github/cpp/bustub_2022/cmake-build-debug-wsl24_clang/bin/b_plus_tree_printer
Enter any of the following commands after the prompt > :
	i <k>  -- Insert <k> (int64_t) as both key and value).
	f <filename>  -- insert multiple keys from reading file.
	c <filename>  -- delete multiple keys from reading file.
	d <k>  -- Delete key <k> and its associated value.
	g <filename>.dot  -- Output the tree in graph format to a dot file
	p -- Print the B+ tree.
	q -- Quit. (Or use Ctl-D.)
	? -- Print this help message.

Please Enter Leaf node max size and Internal node max size:
Example: 5 5
> 
```


order_by.sit

/mnt/d/develops/git/github/cpp/bustub_2022/cmake-build-debug-wsl24_clang/bin/bustub-shell
Welcome to the BusTub shell! Type \help to learn more.

bustub> select * from (select * from (select 1, 2, 3));
bustub> select * from (select * from (select 1, 2, 3));
+------------------------------------+------------------------------------+------------------------------------+
| __subquery#0.__subquery#1.__item#2 | __subquery#0.__subquery#1.__item#3 | __subquery#0.__subquery#1.__item#4 |
+------------------------------------+------------------------------------+------------------------------------+
| 1                                  | 2                                  | 3                                  |
+------------------------------------+------------------------------------+------------------------------------+
bustub> create table t2(v4 int, v5 int, v6 varchar(128));
bustub> create table t2(v4 int, v5 int, v6 varchar(128));
Table created with id = 22
bustub> insert into t2 values (1, 2, 'aa'), (3, 4, 'bb');
bustub> insert into t2 values (1, 2, 'aa'), (3, 4, 'bb');
+-------------------------------+
| __bustub_internal.insert_rows |
+-------------------------------+
| 2                             |
+-------------------------------+
bustub> create index t2v5 on t2(v5);
bustub> create index t2v5 on t2(v5);
Index created with id = 0
bustub> explain select * from t2 order by v5;
bustub> explain select * from t2 order by v5;
=== BINDER ===                                                                            
BoundSelect {                                                                             
table=BoundBaseTableRef { table=t2, oid=22 },                                           
columns=[t2.v4, t2.v5, t2.v6],                                                          
groupBy=[],                                                                             
having=,                                                                                
where=,                                                                                 
limit=,                                                                                 
offset=,                                                                                
order_by=[BoundOrderBy { type=Default, expr=t2.v5 }],                                   
is_distinct=false,                                                                      
ctes=,                                                                                  
}                                                                                         
=== PLANNER ===                                                                           
Sort { order_bys=[(Default, #0.1)] } | (t2.v4:INTEGER, t2.v5:INTEGER, t2.v6:VARCHAR)      
Projection { exprs=[#0.0, #0.1, #0.2] } | (t2.v4:INTEGER, t2.v5:INTEGER, t2.v6:VARCHAR)
SeqScan { table=t2 } | (t2.v4:INTEGER, t2.v5:INTEGER, t2.v6:VARCHAR)                  
=== OPTIMIZER ===                                                                         
IndexScan { index_oid=0 } | (t2.v4:INTEGER, t2.v5:INTEGER, t2.v6:VARCHAR)

bustub> 
