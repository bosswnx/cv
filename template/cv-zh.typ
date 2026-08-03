// For more customizable options, please refer to official reference: https://typst.app/docs/reference/

// #show heading: set text(font: "FZShuSong-Z01S")
#show text: set text(font: "Songti SC")
#show heading.where(level: 1): set text(size: 16pt)
#show heading.where(level: 2): set text(size: 14pt)
#show strong: set text(weight: 900)

#show link: underline

// Uncomment the following lines to adjust the size of text
// The recommend resume text size is from `10pt` to `12pt`
// #set text(
//   size: 12pt,
// )

// Feel free to change the margin below to best fit your own CV
#set page(
  margin: (x: 0.9cm, y: 0.9cm),
)


#set par(justify: true)

#let chiline() = {
  v(-3pt)
  line(length: 100%)
  v(-5pt)
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
语言：
- 熟练掌握：C/C++，Rust；常用：Python

研究领域：
- Linux 内核，RISC-V SBI，数据库内核

== *实习经历*
#chiline()

*#link("https://cloud.tencent.com/about?Is=sdk-topnav")[腾讯云]，大数据 OLAP 研发实习生* #h(1fr) 2026/05 -- 至今 \
参与腾讯云 TCHouse-D（基于 Apache Doris）产品维护与研发，负责 FE/BE 问题定位、修复及社区贡献，独立提交的两个 PR 均已合并至 Apache Doris 主线。
- #link("https://github.com/apache/doris/pull/63537")[#63537]（BE / C++）：将 Workload Group 的 CPU 与 Scan IO 速率计算由固定配置周期改为单调时钟实际间隔，修正调度延迟及运行时修改配置导致的指标偏差，并补充防除零保护与单元测试。
- #link("https://github.com/apache/doris/pull/65659")[#65659]（FE / Java）：复现并定位 Nereids 外表分区裁剪的 TOCTOU 竞态：执行计划构建时冻结分区映射，裁剪阶段却重新读取有序分区范围；并发执行 `ALTER TABLE ADD/DROP PARTITION` 刷新缓存后，新旧快照不一致，使二分裁剪返回旧映射中不存在的分区并触发 NPE。

*#link("https://www.kernelsoft.com")[国科础石]，操作系统研发实习生* #h(1fr) 2024/01 -- 2024/05 \
参与自研智能座舱础石实时操作系统研发，往内核里移植 proc 虚拟文件系统相关功能，已合并到公司内部仓库主线。

== *项目经历*
#chiline()

*SBI-Fuzz* #h(1fr) 2025/09 -- 至今 \
个人在研科研项目，为 RISC-V SBI 引导程序设计的全自动模糊测试工具，能够自动根据 SBI 规范提供的接口定义生成测试用例，并利用 QEMU 模拟器执行测试。支持代码覆盖率，种子变异等高级功能。目前已找出两个 RustSBI 的 bug 并被社区确认。

*MiniOB* #h(1fr) 2024/09 -- 2024/10 \
#link("https://open.oceanbase.com/competition")[全国⼤学⽣计算机系统能⼒⼤赛（OceanBase 数据库大赛）]参赛作品，实现一个精简的数据库内核。本人作为比赛队长，完成超过一半的赛题，内容涉及 update 等基础功能，B+Tree、表达式、函数等高级功能。初赛满分通过，全国排名 19，北京市排名 3。GitHub：https://github.com/bosswnx/miniob-2024

*chaos* #h(1fr) 2024/01 -- 2024/08 \
#link("https://os.educg.net/#/index?TYPE=26OS_K")[全国大学生计算机系统能力大赛（操作系统内核实现赛）]参赛作品，基于清华大学操作系统训练 rCore 项目，用 Rust 实现的类 Unix 操作系统内核，支持多进程，ext4 文件系统，VisionFive 2 硬件平台。获得全国二等奖。GitHub：https://github.com/bosswnx/chaos

== *竞赛获奖*
#chiline()
#grid(
  columns: (auto, 1fr, auto),
  align: (left, center, right),
  column-gutter: 2em,
  row-gutter: 0.8em,
  [全国大学生计算机系统能力大赛（OceanBase 数据库大赛）], [全省第三名], [2024/12],
  [全国大学生计算机系统能力大赛（操作系统内核实现赛）], [全国二等奖], [2024/08],
  [CCPC 中国大学生程序设计竞赛（区域赛）济南站], [铜牌], [2023/12],
  [ICPC 国际大学生程序设计竞赛（区域赛）南京站], [铜牌], [2023/11],
  [美国大学生数学建模大赛], [M 奖], [2023/02],
)

// Feel free to change the date below to the last time you updated your CV
#lastupdated("2026年8月3日")
