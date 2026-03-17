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
  margin: (x: 0.9cm, y: 1.3cm),
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

Email: bosswnx\@qq.com | GitHub:
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

*#link("https://www.kernelsoft.com")[国科础石]，操作系统研发实习生* #h(1fr) 2024/01 -- 2024/05 \
参与自研智能座舱础石实时操作系统研发，成功往内核里移植 proc 虚拟文件系统相关功能，获得 mentor 的认可。

== *项目经历*
#chiline()

*SBI-Fuzz* #h(1fr) 2025/09 -- 至今 \
个人在研科研项目，为 RISC-V SBI 引导程序设计的全自动模糊测试工具，能够自动根据 SBI 规范提供的接口定义生成测试用例，并利用 QEMU 模拟器执行测试。支持代码覆盖率，种子变异等高级功能。目前已找出两个 RustSBI 的 bug 并被社区确认。

*MiniOB* #h(1fr) 2024/09 -- 2024/10 \
#link("https://open.oceanbase.com/competition")[⼤学⽣计算机系统能⼒⼤赛（OceanBase 数据库大赛）]参赛作品，实现一个精简的数据库内核。本人作为比赛队长，完成超过一半的赛题，内容涉及 update 等基础功能，B+Tree、表达式、函数等高级功能。初赛满分通过，全国排名 19，北京市排名 3。GitHub：https://github.com/bosswnx/miniob-2024

*chaos* #h(1fr) 2024/01 -- 2024/08 \
#link("https://os.educg.net/#/index?TYPE=26OS_K")[全国大学生计算机系统能力大赛（操作系统内核实现赛）]参赛作品，基于清华大学操作系统训练 rCore 项目，用 Rust 实现的类 Unix 操作系统内核，支持多进程，ext4 文件系统，VisionFive 2 平台。获得全国二等奖。GitHub：https://github.com/bosswnx/chaos

*清华大学开源操作系统训练营* #h(1fr) 2024/01 -- 2024/05 \
由清华大学主办的开源操作系统训练营，基于清华的 rCore，使用 Rust 编写一个简单的操作系统内核，内容设计内存管理、进程管理、文件系统等。本人全程参与训练，并满分通过最终答辩，获得优秀营员称号。

*南京大学计算机系统基础实验* #h(1fr) 2023/02 -- 2023/05 \
南京⼤学联合计算所“⼀⽣⼀芯”计划设计的⼤实验。主要内容是实现⼀个简化版的 QEMU 模拟器 NEMU，并在其
中实现⼀个简单的⽀持分⻚的分时操作系统 Nanos-lite。内容涉及 RISC-V 体系结构、操作系统等计算机底层领域。本人全程自学，独立完成并深入理解掌握了相关知识。

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
#lastupdated("2026年3月6日")
