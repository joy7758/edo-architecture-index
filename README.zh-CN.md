<!-- language-switch:start -->
[English](./README.md) | [中文](./README.zh-CN.md)
<!-- language-switch:end -->

# EDO 工作空间索引

该仓库是本地工作区的单一入口点
`/Users/zhangbin/GitHub`。

快照日期： **2026-03-04**

目标：用稳定的导航模型替换扁平、嘈杂的文件夹列表：
`Governance -> Protocols -> Applications -> Integrations -> Research -> Ops`。

## 快速进入

- 如果你首先想要生态系统治理：
  - `RedRock-Constitution` -> `god-spear` -> `safety-valve-spec` -> `aro-audit`
- 如果您首先想要协议和标准：
  - `agent-object-protocol` -> `execution-integrity-core` -> `fdo-kernel-mvk` -> `pFDO-Specification`
- 如果您首先想要垂直业务应用程序：
  - `MCP-Legal-China` (LawTech) -> `redrock-opendpp-core` (欧盟 DPP)

## 类别概览

|类别 |计数 |核心目的|
| --- | ---: | --- |
|治理和控制平面| 6 |治理规则、审计链、政策门、成本治理 |
|协议和标准 | 9 |互操作性合同、内核、正式规范 |
|领域应用 | 2 |面向业务的垂直实施|
|框架集成| 6 |与上游代理框架的分叉/集成 |
|研究与实验| 2 |可重复的研究和规模验证|
|运营与孵化| 2 |本地部署脚本和早期占位符 |

## 规范文档

- 完整目录：[REPO_CATALOG.md](REPO_CATALOG.md)
- 架构规则：[ARCHITECTURE.md](ARCHITECTURE.md)
- 执行路线图：[ROADMAP.md](ROADMAP.md)
- 工作区清单脚本：[scripts/workspace_inventory.sh](scripts/workspace_inventory.sh)
- 目录一致性检查：[scripts/check_catalog_consistency.sh](scripts/check_catalog_consistency.sh)

## 维护命令

```bash
# 1) Generate live workspace inventory table
bash scripts/workspace_inventory.sh /Users/zhangbin/GitHub

# 2) Verify REPO_CATALOG.md covers all top-level folders
bash scripts/check_catalog_consistency.sh /Users/zhangbin/GitHub REPO_CATALOG.md
```
