// For more customizable options, please refer to official reference: https://typst.app/docs/reference/

// #show heading: set text(font: "FZShuSong-Z01S")
#set text(font: "Songti SC", size: 10pt)
#show heading.where(level: 1): set block(below: 0.5em, above: 0.5em)
#show heading.where(level: 2): set block(below: 0.55em, above: 1.1em)
#show heading.where(level: 1): set text(size: 18pt)
#show heading.where(level: 2): set text(size: 12pt)
#show strong: set text(weight: 900)

#show link: underline

// Uncomment the following lines to adjust the size of text
// The recommend resume text size is from `10pt` to `12pt`
// #set text(
//   size: 12pt,
// )

// Feel free to change the margin below to best fit your own CV
#set page(
  margin: (x: 0.8cm, y: 0.7cm),
)


#set par(justify: true, leading: 0.8em, spacing: 1em)

#let chiline() = {
  v(-1.5pt)
  line(length: 100%)
  v(-4pt)
}

#let continuescvpage() = {
  place(
    bottom + center,
    dx: 0pt, // Horizontal offset (positive is rightward)
    dy: -10pt, // Vertical offset (positive moves upwards)
    float: true,
    scope: "parent",
    [
      #text(fill: gray)[... continues on the next page ...]
    ],
  )
}

#let lastupdated(date) = {
  h(1fr)
  text("最近更新于 " + date, fill: color.gray)
}

// Uncomment the following lines to add the optional prompt at the bottom of the first CV page
// #continuescvpage()

= *王诺贤*

WeChat&Tel: 13959288816 | Email: bosswnx\@qq.com | GitHub:
#link("https://github.com/bosswnx")[bosswnx] | Website: #link("https://bosswnx.xyz")[bosswnx.xyz]

== *教育经历*
#chiline()

#link("https://www.nju.edu.cn/")[*南京大学*]（985） #h(1fr) 2025/09 -- 2027/06（预计） \
硕士，智能软件与工程学院，软件工程

#link("https://www.ustb.edu.cn/")[*北京科技大学*]（211） #h(1fr) 2021/09 -- 2025/06 \
本科，计算机与通信工程学院，物联网工程

== *技能掌握*
#chiline()
语言：C/C++、Rust（熟练），Python（常用）

研究领域：Linux 内核、RISC-V SBI、数据库内核

== *实习经历*
#chiline()

*#link("https://cloud.tencent.com/about?Is=sdk-topnav")[腾讯云]，大数据 OLAP 研发实习生* #h(1fr) 2026/05 -- 至今 \
参与腾讯云 TCHouse-D（基于 Apache Doris）产品维护与研发，负责 FE/BE 问题定位、修复及社区贡献，独立提交的 5 个 PR 中 3 个已合并至 Apache Doris 主线。
- #link("https://github.com/apache/doris/pull/67310")[#67310]（FE / Java，评审中）：修复 master FE 故障切换后的可用性缺陷——日志回放滞后的非 master FE 仍持续向已失效的旧 master 转发语句（最长 300s），`FORWARD_WITH_SYNC` 语句更会在日志同步等待中挂起至 18 分钟。改为在执行前以结构化 `NOT_MASTER` 直接拒绝，发送端回退到 bdbje leader 查询 / follower 探活重新发现 master 并重试一次；附带 4 FE docker + iptables 故障注入复现与 5 个单测。
- #link("https://github.com/apache/doris/pull/67442")[#67442]（BE / C++，已合并）：修复 group commit 下 `SharedMemtable` 析构时的 ASAN heap-use-after-free。flush 任务仅持有 `FlushToken` 的 weak_ptr，`run()` 结束时最后一个 shared_ptr 释放引发级联析构，而 `~SharedMemtable()` 仍解引用已悬空的 `RowsetWriterContext*`。改为在提交时持有所分配 LSN map 的 shared_ptr，只保活精确清理依赖而非整个 `RowsetWriter`，并补充 UAF 回归测试。
- #link("https://github.com/apache/doris/pull/65659")[#65659]（FE / Java，已合并）：复现并定位 Nereids 外表分区裁剪的 TOCTOU 竞态：执行计划构建时冻结分区映射，裁剪阶段却重新读取有序分区范围；并发执行 `ALTER TABLE ADD/DROP PARTITION` 刷新缓存后，新旧快照不一致，使二分裁剪返回旧映射中不存在的分区并触发 NPE。
- #link("https://github.com/apache/doris/pull/63537")[#63537]（BE / C++，已合并）：将 Workload Group 的 CPU 与 Scan IO 速率计算由固定配置周期改为单调时钟实际间隔，修正调度延迟及运行时修改配置导致的指标偏差，并补充防除零保护与单元测试。
- #link("https://github.com/apache/doris/pull/67404")[#67404]（FE / Java，评审中）：修复 master 上两个长期失败的单元测试——其断言与后续 PR 有意引入的行为（Iceberg OCC 快照栅栏、V1 倒排索引格式弃用）相矛盾，对齐断言并补充语义说明。

*#link("https://www.kernelsoft.com")[国科础石]，操作系统研发实习生* #h(1fr) 2024/01 -- 2024/05 \
参与自研智能座舱础石实时操作系统研发，往内核里移植 proc 虚拟文件系统相关功能，已合并到公司内部仓库主线。

== *项目经历*
#chiline()

*SBI-Fuzz* #h(1fr) 2025/09 -- 至今 \
个人在研项目：面向 RISC-V SBI 引导程序的自动模糊测试工具，根据 SBI 规范接口自动生成测试用例并在 QEMU 中执行，支持代码覆盖与种子变异。已发现两个 RustSBI bug 并获社区确认。

*MiniOB* #h(1fr) 2024/09 -- 2024/10 \
#link("https://open.oceanbase.com/competition")[全国⼤学⽣计算机系统能⼒⼤赛（OceanBase 数据库大赛）]参赛作品：精简数据库内核。本人作为队长完成超过一半赛题（update、B+Tree、表达式、函数等）。初赛满分通过，全国第 19、北京市第 3。GitHub：https://github.com/bosswnx/miniob-2024

*chaos* #h(1fr) 2024/01 -- 2024/08 \
#link("https://os.educg.net/#/index?TYPE=26OS_K")[全国大学生计算机系统能力大赛（操作系统内核实现赛）]参赛作品：基于清华 rCore 用 Rust 实现的类 Unix 内核，支持多进程、ext4、VisionFive 2，全国二等奖。GitHub：https://github.com/bosswnx/chaos

== *竞赛获奖*
#chiline()
#grid(
  columns: (auto, 1fr, auto),
  align: (left, center, right),
  column-gutter: 2em,
  row-gutter: 1em,
  [全国大学生计算机系统能力大赛（OceanBase 数据库大赛）], [全省第三名], [2024/12],
  [全国大学生计算机系统能力大赛（操作系统内核实现赛）], [全国二等奖], [2024/08],
  [CCPC 中国大学生程序设计竞赛（区域赛）济南站], [铜牌], [2023/12],
  [ICPC 国际大学生程序设计竞赛（区域赛）南京站], [铜牌], [2023/11],
  [美国大学生数学建模大赛], [M 奖], [2023/02],
)

// Feel free to change the date below to the last time you updated your CV
#lastupdated("2026年9月4日")
