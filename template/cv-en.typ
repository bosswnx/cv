// For more customizable options, please refer to official reference: https://typst.app/docs/reference/

#show text: set text(font: "Linux Libertine")
#show heading: set text(font: "Linux Biolinum")
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
  text("Last updated on " + date, fill: color.gray)
}

// Uncomment the following lines to add the optional prompt at the bottom of the first CV page
// #continuescvpage()

= *Nuoxian Wang*

Email: bosswnx\@qq.com | GitHub:
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

*#link("https://www.kernelsoft.com")[KernelSoft], OS R&D Intern* #h(1fr) 2024/01 -- 2024/05 \
Participated in the R&D of the self-developed intelligent cockpit real-time operating system. Successfully ported procfs related features into the kernel, receiving recognition from the mentor.

== *Projects*
#chiline()

*SBI-Fuzz* #h(1fr) 2025/09 -- Present \
Individual research project. A fully automated fuzzing tool designed for RISC-V SBI bootloaders. It automatically generates test cases based on the interface definitions provided by the SBI specification and executes them using the QEMU emulator. Supports advanced features such as code coverage and seed mutation. Discovered two bugs in RustSBI which have been confirmed by the community.

*MiniOB* #h(1fr) 2024/09 -- 2024/10 \
Entry for the #link("https://open.oceanbase.com/competition")[National College Student Computer Systems Capability Competition (OceanBase Database Competition)], implementing a simplified database kernel. As the team leader, completed more than half of the tasks, covering basic features like update and advanced features like B+Tree, expressions, and functions. Achieved a perfect score in the preliminary round, ranking 19th nationally and 3rd in Beijing. GitHub: https://github.com/bosswnx/miniob-2024

*chaos* #h(1fr) 2024/01 -- 2024/08 \
Entry for the #link("https://os.educg.net/#/index?TYPE=26OS_K")[National College Student Computer Systems Capability Competition (OS Kernel Implementation)]. A Unix-like operating system kernel written in Rust based on Tsinghua University's rCore project. Supports multi-processing, ext4 file system, and the VisionFive 2 platform. Won the National Second Prize. GitHub: https://github.com/bosswnx/chaos

*NJU ICSPA* #h(1fr) 2023/02 -- 2023/05 \
A major experimental project affiliated with the "One Student One Chip" initiative jointly organized by Nanjing University and ICT, CAS. The main content involves building NEMU, a simplified QEMU emulator, and implementing Nanos-lite, a simple time-sharing operating system with paging support on top of it. Covered low-level computer domains such as RISC-V architecture and operating systems. Completed independently, gaining a deep understanding and mastery of the related knowledge. Code is not publicly available as per course requirements.

== *Awards*
#chiline()
#grid(
  columns: (auto, 1fr, auto),
  align: (left, center, right),
  column-gutter: 2em,
  row-gutter: 0.8em,
  [CSCC (OceanBase Database Competition)], [Provincial 3rd Place], [2024/12],

  [CSCC (OS Kernel Implementation)], [National 2nd Prize], [2024/08],

  [CCPC (Regional) Jinan], [Bronze Medal], [2023/12],
  [ICPC (Regional) Nanjing], [Bronze Medal], [2023/11],
  [MCM/ICM Mathematical Contest in Modeling], [Honorable Mention], [2023/02],
)

// Feel free to change the date below to the last time you updated your CV
#lastupdated("March 16, 2026")
