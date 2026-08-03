// For more customizable options, please refer to official reference: https://typst.app/docs/reference/

#set text(size: 10.5pt)

#show heading.where(level: 1): set text(size: 16pt)
#show heading.where(level: 2): set text(size: 14pt)
#show strong: set text(weight: 900)

#show link: underline

// Feel free to change the margin below to best fit your own CV
#set page(
  margin: (x: 0.9cm, y: 0.9cm),
)

#set par(justify: true, leading: 0.65em)

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
  text("Last updated on " + date, fill: color.gray)
}

// Uncomment the following lines to add the optional prompt at the bottom of the first CV page
// #continuescvpage()

= *Nuoxian Wang*

WeChat&Tel: 13959288816 | Email: bosswnx\@qq.com | GitHub:
#link("https://github.com/bosswnx")[bosswnx] | Website: #link("https://bosswnx.xyz")[bosswnx.xyz]

== *Education*
#chiline()

#link("https://www.nju.edu.cn/")[*Nanjing University*] (985) #h(1fr) 2025/09 -- 2027/06 (Expected) \
Master, School of Intelligent Software and Engineering, Software Engineering

#link("https://www.ustb.edu.cn/")[*University of Science and Technology Beijing*] (211) #h(1fr) 2021/09 -- 2025/06 \
Bachelor, School of Computer and Communication Engineering, Internet of Things Engineering

== *Skills*
#chiline()
Languages:
- Proficient: C/C++, Rust; Familiar: Python

Research Interests:
- Linux Kernel, RISC-V SBI, Database Kernel

== *Experience*
#chiline()

*#link("https://cloud.tencent.com/about?Is=sdk-topnav")[Tencent Cloud], Big Data OLAP R&D Intern* #h(1fr) 2026/05 -- Present \
Maintained and developed Tencent Cloud TCHouse-D (based on Apache Doris), diagnosing and fixing FE/BE issues and contributing upstream. Both independently submitted PRs were merged into Apache Doris mainline.
- #link("https://github.com/apache/doris/pull/63537")[#63537] (BE / C++): Replaced the fixed configured interval used for Workload Group CPU and Scan IO rate calculations with the actual monotonic-clock interval, correcting metric inaccuracies caused by scheduling delays or runtime configuration changes; added division-by-zero protection and unit tests.
- #link("https://github.com/apache/doris/pull/65659")[#65659] (FE / Java): Reproduced and diagnosed a TOCTOU race in Nereids external-table partition pruning: the partition map was frozen during plan construction, while sorted partition ranges were re-read during pruning. A concurrent `ALTER TABLE ADD/DROP PARTITION` cache refresh could therefore mix snapshots, causing binary-search pruning to return a partition absent from the old map and trigger an NPE.

*#link("https://www.kernelsoft.com")[KernelSoft], OS R&D Intern* #h(1fr) 2024/01 -- 2024/05 \
Participated in R&D of a self-developed intelligent cockpit real-time OS. Ported procfs-related features into the kernel, merged into the company's internal mainline.

== *Projects*
#chiline()

*SBI-Fuzz* #h(1fr) 2025/09 -- Present \
Individual research project: fully automated fuzzing tool for RISC-V SBI bootloaders. Auto-generates test cases from SBI spec interfaces and runs them on QEMU, with code coverage and seed mutation. Two RustSBI bugs found and confirmed by the community.

*MiniOB* #h(1fr) 2024/09 -- 2024/10 \
#link("https://open.oceanbase.com/competition")[National College Student Computer Systems Capability Competition (OceanBase Database Competition)] entry. Built a simplified database kernel as team lead, completing over half the tasks (update, B+Tree, expressions, functions). Perfect preliminary score; ranked 19th nationally, 3rd in Beijing. GitHub: https://github.com/bosswnx/miniob-2024

*chaos* #h(1fr) 2024/01 -- 2024/08 \
#link("https://os.educg.net/#/index?TYPE=26OS_K")[National College Student Computer Systems Capability Competition (OS Kernel Implementation)] entry. Unix-like kernel in Rust based on Tsinghua rCore; multi-process, ext4, VisionFive 2. National Second Prize. GitHub: https://github.com/bosswnx/chaos

*NJU Computer Systems Fundamentals Lab* #h(1fr) 2023/02 -- 2023/05 \
Major lab in NJU–ICT(CAS) "One Student One Chip" program. Built NEMU (simplified QEMU) and Nanos-lite (paged time-sharing OS) covering RISC-V and OS fundamentals. Self-taught throughout; completed independently with deep understanding.

== *Awards*
#chiline()
#grid(
  columns: (auto, 1fr, auto),
  align: (left, center, right),
  column-gutter: 2em,
  row-gutter: 0.5em,
  [CSCC (OceanBase Database Competition)], [Provincial 3rd Place], [2024/12],
  [CSCC (OS Kernel Implementation)], [National 2nd Prize], [2024/08],
  [CCPC (Regional) Jinan], [Bronze Medal], [2023/12],
  [ICPC (Regional) Nanjing], [Bronze Medal], [2023/11],
  [MCM/ICM Mathematical Contest in Modeling], [Honorable Mention], [2023/02],
)

// Feel free to change the date below to the last time you updated your CV
#lastupdated("August 3, 2026")
