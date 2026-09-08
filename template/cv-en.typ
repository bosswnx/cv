// For more customizable options, please refer to official reference: https://typst.app/docs/reference/

#set text(size: 10pt)

#show heading.where(level: 1): set block(below: 0.5em, above: 0.5em)
#show heading.where(level: 2): set block(below: 0.55em, above: 1.1em)
#show heading.where(level: 1): set text(size: 18pt)
#show heading.where(level: 2): set text(size: 12pt)
#show strong: set text(weight: 900)

#show link: underline

// Feel free to change the margin below to best fit your own CV
#set page(
  margin: (x: 0.85cm, y: 0.7cm),
)


#set par(justify: true, leading: 0.6em, spacing: 1em)

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
Languages: C/C++, Rust (proficient); Python (familiar)

Research Interests: Linux Kernel, RISC-V SBI, Database Kernel

== *Experience*
#chiline()

*#link("https://cloud.tencent.com/about?Is=sdk-topnav")[Tencent Cloud], Big Data OLAP R&D Intern* #h(1fr) 2026/05 -- Present \
Maintained and developed Tencent Cloud TCHouse-D (based on Apache Doris), diagnosing and fixing FE/BE issues and contributing upstream. Three of five independently submitted PRs have been merged into Apache Doris mainline.
- #link("https://github.com/apache/doris/pull/67310")[#67310] (FE / Java, under review): Fixed an availability bug after master FE failover: a non-master FE with lagging journal replay kept forwarding statements to the stale old master for up to 300s, and `FORWARD_WITH_SYNC` statements hung for up to 18 minutes. Receiver now rejects up front with a structured `NOT_MASTER` result; sender falls back to bdbje leader lookup / follower probing to rediscover the master and retries once. Includes a 4-FE docker + iptables fault-injection reproduction plus 5 unit tests.
- #link("https://github.com/apache/doris/pull/67442")[#67442] (BE / C++, merged): Fixed an ASAN heap-use-after-free in `SharedMemtable` destruction under group commit: the flush task held only a weak reference to `FlushToken`; once `run()`'s local shared_ptr dropped the last reference, cascaded destruction tore down `RowsetWriterContext` before `~SharedMemtable()` finished dereferencing it. The LSN map is now captured at submission via shared_ptr, keeping just the precise cleanup dependency alive (without extending `RowsetWriter`'s lifetime); added UAF regression tests.
- #link("https://github.com/apache/doris/pull/65659")[#65659] (FE / Java, merged): Reproduced and diagnosed a TOCTOU race in Nereids external-table partition pruning — the partition map was frozen during plan construction but sorted partition ranges were re-read during pruning. A concurrent `ALTER TABLE ADD/DROP PARTITION` cache refresh could mix snapshots, causing binary-search pruning to return a partition absent from the old map and trigger an NPE.
- #link("https://github.com/apache/doris/pull/63537")[#63537] (BE / C++, merged): Replaced the fixed configured interval used for Workload Group CPU and Scan IO rate calculations with the actual monotonic-clock interval, correcting metric inaccuracies caused by scheduling delays or runtime configuration changes; added division-by-zero protection and unit tests.
- #link("https://github.com/apache/doris/pull/67404")[#67404] (FE / Java, under review): Aligned two long-failing unit-test assertions on master with the behavior intentionally introduced by later PRs (Iceberg OCC snapshot fence, V1 inverted-index format deprecation); updated assertions and added semantic comments.

*#link("https://www.kernelsoft.com")[KernelSoft], OS R&D Intern* #h(1fr) 2024/01 -- 2024/05 \
Participated in R&D of a self-developed intelligent cockpit real-time OS. Ported procfs-related features into the kernel, merged into the company's internal mainline.

== *Projects*
#chiline()

*SBI-Fuzz* #h(1fr) 2025/09 -- Present \
Individual research project: automated fuzzing tool for RISC-V SBI bootloaders. Auto-generates test cases from SBI spec interfaces and executes them on QEMU, with code coverage and seed mutation. Two RustSBI bugs found and confirmed by the community.

*MiniOB* #h(1fr) 2024/09 -- 2024/10 \
#link("https://open.oceanbase.com/competition")[CSCC (OceanBase Database Competition)] entry: simplified database kernel built as team lead (over half the tasks: update, B+Tree, expressions, functions). Perfect preliminary score; ranked 19th nationally, 3rd in Beijing. GitHub: https://github.com/bosswnx/miniob-2024

*chaos* #h(1fr) 2024/01 -- 2024/08 \
#link("https://os.educg.net/#/index?TYPE=26OS_K")[CSCC (OS Kernel Implementation)] entry: Unix-like kernel in Rust built on Tsinghua's rCore; multi-process, ext4, VisionFive 2. National 2nd Prize. GitHub: https://github.com/bosswnx/chaos

== *Awards*
#chiline()
#grid(
  columns: (auto, 1fr, auto),
  align: (left, center, right),
  column-gutter: 2em,
  row-gutter: 1em,
  [CSCC (OceanBase Database Competition)], [Provincial 3rd Place], [2024/12],
  [CSCC (OS Kernel Implementation)], [National 2nd Prize], [2024/08],
  [CCPC (Regional) Jinan], [Bronze Medal], [2023/12],
  [ICPC (Regional) Nanjing], [Bronze Medal], [2023/11],
  [MCM/ICM Mathematical Contest in Modeling], [Honorable Mention], [2023/02],
)

// Feel free to change the date below to the last time you updated your CV
#lastupdated("September 4, 2026")