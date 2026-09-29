###### structure.md >> markdown
# SamsungToolkitA7
### Structure v1.0
```text
SamsungToolkitA7/
├── README.md
├── LICENSE
├── .gitignore
├── docs/
│   ├── README.md
│   ├── structure.md.md
│   ├── device-specs.md
│   ├── partitions-map.md
│   ├── bootloader-notes.md
│   └── roms-kernels-overview.md
├── firmware/
│   ├── README.md 
│   ├── STOCK_ROM_ANDROID10_ONEUI2.0.md
│   ├── CUSTOM_ROM_GSI_COMPATIBILITY.md
│   └── PLACEHOLDER.txt
├── kernel/
│   ├── README.md
│   ├── KERNEL_STOCK_NOTES.md
│   ├── KERNEL_CUSTOM_NOTES.md
│   └── build/
│       └── example-kernel-build.sh
├── recovery/
│   ├── README.md
│   ├── TWRP_PBRP_NOTES.md
│   ├── flashing-guide-odin.md
│   └── flashing-guide-linux.md
├── tools/
│   ├── README.md.md
│   ├── odin-linux/
│   │   └── README.md
│   ├── partition-tools/
│   │   ├── dump-partitions.sh
│   │   └── check-partitions.sh
│   └── boot-tools/
│       ├── repack-boot.sh
│       └── extract-boot.sh
├── diagnostics/
│   ├── README.md 
│   ├── collect-logs.sh
│   ├── sensors-check.sh
│   └── system-report.md
├── configs/
│   ├── README.md 
│   ├── gsi-recommended-list.md
│   ├── magisk-modules-notes.md
│   └── safety-checklist.md
└── ci/
    ├── build-kernel.yml
    ├── test-tools.yml
    └── diagnostics-report.yml
+++
