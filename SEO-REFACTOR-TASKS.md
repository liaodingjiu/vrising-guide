# V Rising Website SEO Refactoring — 执行任务书

## Version

1.0 — 2026-08-02

## 适用 AI Agent

Claude Code / Cursor / ChatGPT Agent

---

# 1. 执行原则

## 必须遵守

1. **不重建网站** — 所有改动是 Patch，不是 Rebuild
2. **不随意改 URL** — 已有排名的页面 URL 不动；新建页面用新 URL
3. **已有页面 Patch Upgrade** — 默认动作是"升级现有页面"，不是"新建替代"
4. **新页面只针对验证过的搜索需求** — 围绕 Build / Castle / Server 三大支柱
5. **避免 Wiki 化** — 不做全物品数据库、全 NPC 数据库、全法术数据库
6. **决策驱动内容** — 每页回答"玩家该选什么"，不止罗列数据

---

# 2. 三大内容支柱

| 支柱 | 优先级 | 搜索意图 | 变现价值 |
|---|---|---|---|
| **Builds** | ★★★★★ | "v rising build" / "v rising greatsword build" | 中（Adsense） |
| **Castle** | ★★★★☆ | "v rising castle layout" / "v rising best base location" | 中（Adsense） |
| **Server** | ★★★★★ | "v rising server setup" / "v rising server hosting" | **高**（Hosting affiliate） |

---

# 3. 现有页面处置表

每个现有页面的处置决定：

| # | 页面 | 处置 | 说明 |
|---|---|---|---|
| 1 | `index.html` | **Patch** | 重构为支柱 Hub 聚合首页 |
| 2 | `boss-order.html` | **Patch** | 加内部链接，保留 URL |
| 3 | `best-weapons.html` | **Patch** | 保留 URL，作为 Build 支柱核心组件 |
| 4 | `blood-types.html` | **Patch** | 保留 URL，重新定位为 "Blood Types for Builds" |
| 5 | `armor.html` | **Patch** | 保留 URL，作为 Build 支柱组件 |
| 6 | `castle-building.html` | **Patch → Castle Hub** | URL 不变，内容升级为 Castle 支柱 Hub |
| 7 | `best-base-locations.html` | **Patch** | 保留 URL，作为 Castle Hub 的子页面 |
| 8 | `beginner-guide.html` | **Patch** | 保留 URL，漏斗顶部页面 |
| 9 | `resources.html` | **Patch** | 保留 URL，内部链接到 Item Guides |
| 10 | `servants.html` | **Patch** | 保留 URL，链接到 Castle Hub |
| 11 | `progression.html` | **Patch** | 保留 URL，链接到 Build Hub |
| 12 | `map.html` | **Patch** | 保留 URL |
| 13 | `whetstone.html` | **Patch** | 保留 URL，归入 Item Guides |
| 14 | `steam-deck.html` | **Patch** | 保留 URL |
| 15 | `about.html` | **Leave** | 不动 |
| 16 | `contact.html` | **Leave** | 不动 |
| 17 | `privacy.html` | **Leave** | 不动 |
| 18 | `terms.html` | **Leave** | 不动 |

---

# 4. 新页面清单

仅创建搜索需求验证过的页面：

| # | 页面 | URL | 搜索需求验证 |
|---|---|---|---|
| 1 | Build Hub | `builds.html` | "v rising build" — 高搜索量 |
| 2 | Greatsword Build | `greatsword-build.html` | "v rising greatsword build" |
| 3 | Claw Build | `claw-build.html` | "v rising claw build" |
| 4 | Summoner Build | `summoner-build.html` | "v rising summoner build" |
| 5 | PvP Build | `pvp-build.html` | "v rising pvp build" |
| 6 | Server Hub | `server.html` | "v rising server setup" — 高商业价值 |

> **Note**: Build 子页面数量不做硬性上限。上述 4 个是第一批验证过的。后续根据搜索需求数据追加。

---

# 5. Phase 1: Build Hub + Castle Hub + 导航重构

## Task 1.1 — 新建 Build Hub

### URL

```
/builds.html（新建）
```

### SEO Data

| 字段 | 值 |
|---|---|
| **Title** | `V Rising Builds — Best PvE & PvP Builds for Every Playstyle (2026)` |
| **Meta Description** | `Discover the best V Rising builds for PvE and PvP. Optimized weapons, armor, spells, blood choices, and combat strategies for every playstyle — updated for Invaders of Oakveil.` |
| **H1** | `V Rising Builds Guide` |
| **H1 Supporting** | `Find your optimal V Rising build with weapon, armor, spell, and blood type combinations tested across PvE and PvP.` |
| **Primary Keyword** | `v rising build` |
| **Secondary Keywords** | `v rising best build`, `v rising pve build`, `v rising pvp build` |
| **Schema** | `CollectionPage` + `BreadcrumbList` + `FAQPage` |

### Content Structure

```
1. Introduction — 什么是 Build / 为什么需要 Build / 本站 Build 方法论
2. Build 组件说明
   - Weapons（链接到 best-weapons.html）
   - Armor（链接到 armor.html）
   - Blood Types（链接到 blood-types.html）
   - Spells（本页概述）
3. Build 分类对比表（表格：名称 / 武器 / 血型 / PvE/PvP / 难度）
4. PvE Builds 区块（卡片式，每个卡片 → 独立 Build 页）
5. PvP Builds 区块
6. 武器流派 Builds 区块
7. Playstyle Decision Tree（问玩家几个问题 → 推荐 Build）
8. FAQ（FAQPage Schema）
   - What is the best build in V Rising?
   - What's the best PvE build for V Rising?
   - What's the best PvP build for V Rising?
   - What blood type goes with what weapon?
```

### Internal Links

```
Build Hub 必须链接到:
  → best-weapons.html（武器对比）
  → armor.html（护甲选择）
  → blood-types.html（血型选择）
  → progression.html（进度路线）
  → boss-order.html（Boss 掉落武器）
  → [每个独立 Build 子页面]

Build Hub 被以下页面链接:
  ← index.html（主导航 + 首页卡片）
  ← 所有 Build 子页面（面包屑）
  ← best-weapons.html（"See which build uses this weapon →"）
  ← blood-types.html（"See builds using this blood type →"）
  ← armor.html（"See which builds use this armor →"）
```

### Implementation Notes

- 这是**聚合页面**，不是空壳——用现有 weapons/armor/blood 内容做组件说明，用表格做 Build 对比
- 第一批 Build 子页面可能还没建好——卡片先写 Build 简述，链接等子页面就位后再激活
- Playstyle Decision Tree 是差异化内容——Wiki 不做这个

---

## Task 1.2 — 升级 Castle Hub

### URL

```
/castle-building.html（Patch — URL 不变）
```

### Current Status

- 36KB，sitemap priority 0.8
- 当前 Title: `V Rising Castle Building Guide 2026 — Room Types, Defense & Layouts`
- 当前 H1: `V Rising Castle Building Guide 2026 — Room Types, Defense & Layouts`
- 已经有 Article Schema + BreadcrumbList
- 已有 Google/Bing 索引，不要破坏

### Patch Changes

| 元素 | Old | New |
|---|---|---|
| **Title** | `V Rising Castle Building Guide 2026 — Room Types, Defense & Layouts` | `V Rising Castle Guide — Best Locations, Layouts & Design Ideas (2026)` |
| **Meta Description** | `The complete V Rising castle building guide. Room types and optimization...` | `Build the perfect V Rising castle with the best locations, layouts, room designs, and construction strategies. Covers PvE and PvP castle design — updated for Invaders of Oakveil.` |
| **H1** | `V Rising Castle Building Guide 2026 — Room Types, Defense & Layouts` | `V Rising Castle Guide` |
| **H1 Supporting** | 当前第一段 | `Create powerful and beautiful castles with optimized layouts, locations, and building strategies for every playstyle.` |
| **URL** | 不变 | 不变 |
| **Canonical** | 不变 | 不变 |

### New Sections to Add

```
1. [已有] Room Types & Optimization
2. [已有] Castle Defense
3. [已有] Garden Layouts
4. [已有] Servant Integration
5. [新增] Best Castle Locations Summary（提取 best-base-locations.html 精华，300-500 字 + 链接）
6. [新增] Castle Layout Ideas（PvE 效率布局 vs PvP 防御布局）
7. [新增] Castle Design Examples（文字描述 2-3 个设计案例）
8. [已有] FAQ → 扩充
```

### Internal Links

```
Castle Hub 必须链接到:
  → best-base-locations.html（详细选址）
  → servants.html（仆人管理）
  → beginner-guide.html（新手第一次建城堡）
  → server.html（PvP 服务器建城堡注意事项，等 Server Hub 就位后加）

Castle Hub 被以下页面链接:
  ← index.html（主导航 + 首页卡片）
  ← best-base-locations.html（"See full castle guide →"）
  ← servants.html（"How servants fit into your castle →"）
  ← beginner-guide.html（建城堡环节）
```

### Implementation Notes

- **URL 不变** — 已有排名，不能动
- **Title 改短** — 原来太长（70+ 字符），缩到 60 以内
- **吸收但不替代** best-base-locations.html — 该页面保留独立 URL，Castle Hub 只做摘要 + 链接
- 新增 Castle Layout Ideas 和 Design Examples 是**差异化内容**——竞争对手通常是纯数据罗列
- Schema 保持 Article，不需要改

---

## Task 1.3 — 全局导航重构

### 改动范围

所有 14 个内容页面（about/contact/privacy/terms 4 个不需要改导航）

### 新导航结构

```html
<nav aria-label="Main navigation">
  <div class="nav-inner">
    <a href="index.html" class="logo">V Rising<span>Guides</span></a>
    <div class="nav-right">
      <ul class="nav-links">
        <li><a href="index.html">Home</a></li>
        <li><a href="builds.html">Builds</a></li>
        <li><a href="castle-building.html">Castle</a></li>
        <li><a href="boss-order.html">Boss Order</a></li>
        <li><a href="best-weapons.html">Best Weapons</a></li>
        <li><a href="beginner-guide.html">Beginner</a></li>
        <li class="nav-more">
          <a href="resources.html">More ▾</a>
          <ul class="nav-dropdown">
            <li><a href="resources.html">Resources</a></li>
            <li><a href="map.html">Map</a></li>
            <li><a href="servants.html">Servants</a></li>
            <li><a href="progression.html">Progression</a></li>
            <li><a href="whetstone.html">Whetstone</a></li>
            <li><a href="steam-deck.html">Steam Deck</a></li>
          </ul>
        </li>
      </ul>
      <button class="theme-toggle" id="themeToggle" aria-label="Toggle dark mode">
        <span class="sun">☀️</span><span class="moon">🌙</span>
      </button>
    </div>
  </div>
</nav>
```

### 导航变化对比

| 位置 | Old | New | 原因 |
|---|---|---|---|
| 1 | Boss Order | **Home** | 所有页面统一加 Home |
| 2 | Best Weapons | **Builds** | 新建 Build Hub |
| 3 | Blood Types | **Castle** | castle-building 升级为 Castle Hub |
| 4 | Base Locations | **Boss Order** | 保留——高流量验证页面 |
| 5 | Castle Building | **Best Weapons** | 保留——最高流量页面之一 |
| 6 | Beginner Guide | **Beginner** | 保留——漏斗顶部 |
| 7 | Map | **More ▾** | 降级到下拉 |
| 8 | Resources | **More ▾** | 降级到下拉 |

### 掉出主导航的页面处理

| 页面 | 新位置 | 说明 |
|---|---|---|
| `blood-types.html` | Build Hub 内部链接 + More 下拉 | 服务 Build 支柱 |
| `best-base-locations.html` | Castle Hub 内部链接 + 首页卡片 | 服务 Castle 支柱 |
| `armor.html` | Build Hub 内部链接 + 首页卡片 | 服务 Build 支柱 |
| `resources.html` | More 下拉 | 降级 |
| `map.html` | More 下拉 + 相关页面内部链接 | 降级 |
| `servants.html` | More 下拉 + Castle Hub 链接 | 降级 |
| `progression.html` | More 下拉 + Build Hub 链接 | 降级 |
| `whetstone.html` | More 下拉 | 降级 |
| `steam-deck.html` | More 下拉 | 降级 |

### CSS 需要新增

```css
/* 下拉菜单 */
.nav-more { position: relative; }
.nav-dropdown {
  display: none;
  position: absolute;
  top: 100%;
  right: 0;
  background: var(--bg-card);
  border: 1px solid var(--border);
  border-radius: 8px;
  padding: 0.5rem 0;
  min-width: 160px;
  z-index: 100;
  box-shadow: 0 8px 24px rgba(0,0,0,0.3);
}
.nav-more:hover .nav-dropdown,
.nav-more:focus-within .nav-dropdown {
  display: block;
}
.nav-dropdown li { display: block; }
.nav-dropdown li a {
  display: block;
  padding: 0.5rem 1rem;
  white-space: nowrap;
}
.nav-dropdown li a:hover {
  background: var(--bg-hover);
}
```

### Implementation Notes

- **14 个文件**需要更新 `<nav>` 块，全部统一为新结构
- 面包屑也要更新：Castle 页面面包屑改为 `Home > Castle > Castle Building`
- `index.html` 首页卡片区需要新增 Build Hub 卡片
- Build Hub 页面使用新导航结构
- More 下拉在移动端需要额外处理（可用 `:hover` + `:focus-within` 做基础支持）

---

## Task 1.4 — 首页 Patch

### URL

```
/index.html（Patch）
```

### 改动点

1. **Hero 区域**
   - H1 supporting 文案从罗列页面数 → 改为三大支柱价值主张
   - 例如：`"Find your build. Design your castle. Setup your server. Every guide player-tested — not wiki-rewritten."`

2. **导航**
   - 更新为 Phase 1 新导航结构

3. **首页 Schema ItemList**
   - 改为按支柱分组，不再罗列 9 个页面
   - Build Hub / Castle Hub / Boss Order / Best Weapons / Beginner Guide / More

4. **首页卡片区**
   - 新增 Build Hub 卡片（突出位置）
   - Castle Hub 卡片文案更新
   - 确保所有现有页面仍有卡片入口（包括降级到 More 的页面）

5. **Instant Value Zone 按钮**
   - 新增 Builds 按钮
   - 保持原有高频按钮

---

# 6. Phase 2: Build 子页面

## Task 2.1 — Greatsword Build

### URL

```
/greatsword-build.html（新建）
```

### SEO Data

| 字段 | 值 |
|---|---|
| **Title** | `V Rising Greatsword Build — Best PvE & PvP Setup (2026)` |
| **Meta Description** | `Complete V Rising Greatsword build guide. Best armor, blood type, spells, and jewels for Greatsword PvE and PvP combat. Full gear progression and playstyle tips.` |
| **H1** | `V Rising Greatsword Build Guide` |
| **Primary Keyword** | `v rising greatsword build` |
| **Schema** | `Article` + `BreadcrumbList` + `FAQPage` |

### Content Structure

```
1. Why Greatsword?（优缺点）
2. Best Armor for Greatsword（链接 armor.html）
3. Best Blood Type for Greatsword（链接 blood-types.html）
4. Best Spells for Greatsword
5. PvE Greatsword Build（完整配置表）
6. PvP Greatsword Build（完整配置表）
7. Gear Progression Path
8. Playstyle Tips
9. FAQ
```

### Internal Links

```
→ best-weapons.html（"See all 14 weapons ranked →"）
→ builds.html（"Back to Build Hub →"）
→ armor.html
→ blood-types.html
→ progression.html
```

---

## Task 2.2 — Claw Build

### URL

```
/claw-build.html（新建）
```

### SEO Data

| 字段 | 值 |
|---|---|
| **Title** | `V Rising Claw Build — Best PvE & PvP Setup (2026)` |
| **Meta Description** | `The best V Rising Claw build for PvE and PvP. Optimized armor, blood type, spells, and jewels for the Claw weapon — high mobility, high damage.` |
| **H1** | `V Rising Claw Build Guide` |
| **Primary Keyword** | `v rising claw build` |
| **Schema** | `Article` + `BreadcrumbList` + `FAQPage` |

### Content Structure

同 Greatsword Build 模板。

---

## Task 2.3 — Summoner Build

### URL

```
/summoner-build.html（新建）
```

### SEO Data

| 字段 | 值 |
|---|---|
| **Title** | `V Rising Summoner Build — Best Minion PvE Setup (2026)` |
| **Meta Description** | `The ultimate V Rising Summoner build. Maximize minion damage with the best spells, armor, blood type, and jewels for a summoner playstyle.` |
| **H1** | `V Rising Summoner Build Guide` |
| **Primary Keyword** | `v rising summoner build` |
| **Schema** | `Article` + `BreadcrumbList` + `FAQPage` |

### Content Structure

同 Greatsword Build 模板。

---

## Task 2.4 — PvP Build

### URL

```
/pvp-build.html（新建）
```

### SEO Data

| 字段 | 值 |
|---|---|
| **Title** | `V Rising PvP Build — Best Weapons, Blood & Armor for PvP (2026)` |
| **Meta Description** | `Best V Rising PvP builds ranked. Top weapon setups, blood types, armor choices, and spell combos for duels, raiding, and open-world PvP.` |
| **H1** | `V Rising PvP Build Guide` |
| **Primary Keyword** | `v rising pvp build` |
| **Schema** | `Article` + `BreadcrumbList` + `FAQPage` |

### Content Structure

```
1. PvP Meta Overview
2. Top 5 PvP Builds（表格对比）
3. PvP Weapon Tier（精简版，链接 best-weapons.html）
4. PvP Blood Type Choices
5. PvP Spell Combos
6. Raiding vs Duel Builds
7. FAQ
```

---

# 7. Phase 3: Server 支柱

## Task 3.1 — Server Hub

### URL

```
/server.html（新建）
```

### SEO Data

| 字段 | 值 |
|---|---|
| **Title** | `V Rising Server Guide — Dedicated Server Setup & Settings (2026)` |
| **Meta Description** | `Complete V Rising server setup guide. Learn how to host a dedicated server, configure settings, manage admin commands, and optimize performance for multiplayer.` |
| **H1** | `V Rising Server Guide` |
| **H1 Supporting** | `Everything you need to setup, configure, and host a V Rising multiplayer server — from dedicated servers to private co-op worlds.` |
| **Primary Keyword** | `v rising server setup` |
| **Secondary Keywords** | `v rising dedicated server`, `v rising server hosting`, `v rising server settings` |
| **Schema** | `Article` + `BreadcrumbList` + `FAQPage` |

### Content Structure

```
1. Introduction — 为什么需要自己的服务器
2. Server Types Overview（Dedicated vs Peer-to-Peer vs Hosted）
3. Dedicated Server Setup（Step-by-step）
4. Server Requirements（Hardware specs）
5. Server Hosting Options（可做 affiliate）
6. Private Server Setup（和朋友玩）
7. Server Settings Reference（关键配置项）
8. Admin Commands Cheat Sheet
9. Performance Optimization Tips
10. FAQ
```

### Internal Links

```
Server Hub 必须链接到:
  → beginner-guide.html（新手玩多人）
  → castle-building.html（PvP 服务器建城堡注意事项）

Server Hub 被导航链接:
  ← 首页（Phase 3 加入主导航 "Server"）
```

### Implementation Notes

- 这是**纯新建页面**，没有现有内容可聚合
- Server Hosting Options 有商业变现潜力（hosting affiliate links）
- 先用 More 下拉或首页卡片养着，内容质量过硬后再进主导航
- 后续可拆分为子页面：server-setup.html, server-settings.html, admin-commands.html

---

# 8. 内部链接矩阵

核心页面之间的链接关系：

```
                    ┌──────────────┐
                    │  index.html  │
                    └──────┬───────┘
           ┌───────────────┼───────────────┐
           ▼               ▼               ▼
    ┌──────────┐   ┌─────────────┐   ┌────────────┐
    │builds.html│   │castle-      │   │server.html │
    └────┬─────┘   │building.html│   └────────────┘
         │         └──────┬──────┘
    ┌────┴────┐          ┌─┴──────────────┐
    ▼         ▼          ▼                ▼
┌────────┐ ┌────────┐ ┌──────────────┐ ┌──────────┐
│best-   │ │armor.  │ │best-base-    │ │servants. │
│weapons │ │html    │ │locations.html│ │html      │
│.html   │ └────────┘ └──────────────┘ └──────────┘
└────────┘
    │
    ▼
┌────────┐
│blood-  │
│types.  │
│html    │
└────────┘

所有 Build 子页面:
  → builds.html（Hub）
  → best-weapons.html
  → armor.html
  → blood-types.html
  → boss-order.html（legendary 掉落）

所有 Castle 相关页面:
  → castle-building.html（Hub）
  → best-base-locations.html
  → servants.html

所有页面:
  → beginner-guide.html（新手漏斗）
  → progression.html（进度参考）
```

---

# 9. Schema 规范

| 页面类型 | Schema |
|---|---|
| 支柱 Hub（builds.html, castle-building.html, server.html） | `Article` + `BreadcrumbList` + `FAQPage` |
| 独立 Build 子页面 | `Article` + `BreadcrumbList` + `FAQPage` |
| 已有内容页面 | 保持现有 Schema，检查 `dateModified` 更新 |
| 首页 | `WebSite` + `ItemList` + `BreadcrumbList` + `FAQPage` |

**BreadcrumbList 规则**:
- Build 子页面: `Home > Builds > [Build Name]`
- Castle 页面: `Home > Castle > [Page Name]`
- Server 页面: `Home > Server > [Page Name]`
- 已有页面: 按新导航更新面包屑

---

# 10. 不做的事情

1. ❌ 不创建全物品数据库页面
2. ❌ 不创建全 NPC 数据库页面
3. ❌ 不创建全法术数据库页面
4. ❌ 不创建独立 Blood Types SEO 着陆页（保留已有 blood-types.html，但不新建更多血型子页面）
5. ❌ 不创建独立 Potions / Jewels / Farming / Spells / Calculator / Planner 页面（这些主题只能出现在相关指南内部）
6. ❌ 不改变已有排名页面的 URL
7. ❌ 不重写已有内容（Patch，不是 Rebuild）
8. ❌ 不写 AI 填充内容（通用废话、重复解释、关键词堆砌）
9. ❌ 不在 Server 内容就位前把 Server 放进主导航

---

# 11. 内容质量检查清单

每页必须通过以下检查才能上线：

- [ ] Primary keyword 在 Title 和 H1 中
- [ ] Meta description 在 150-160 字符，含 primary keyword
- [ ] H1 supporting sentence 存在且不重复 H1/Title
- [ ] 引言段落说明了"为什么玩家需要这个页面"（搜索意图）
- [ ] 至少有一个表格（对比表 / 配置表 / 梯级表）
- [ ] 至少 5 个 FAQ（FAQPage Schema）
- [ ] 至少 3 个上下文内部链接（指向相关页面）
- [ ] 面包屑正确
- [ ] `dateModified` 更新为实际修改日期
- [ ] 没有 "as an AI" / "in this article" / 通用废话
- [ ] Schema JSON-LD 有效

---

# 12. 执行顺序

```
Phase 1（Priority: P0 — 立即执行）
├── Task 1.1  新建 builds.html（Build Hub）
├── Task 1.2  Patch castle-building.html（升级为 Castle Hub）
├── Task 1.4  Patch index.html（首页重构）
├── Task 1.3  全局导航重构（所有 14 个内容页面）
└── Patch    best-weapons.html, armor.html, blood-types.html
            （加 Build Hub 内部链接 + 重新定位文案）

Phase 2（Priority: P1 — Phase 1 完成后）
├── Task 2.1  新建 greatsword-build.html
├── Task 2.2  新建 claw-build.html
├── Task 2.3  新建 summoner-build.html
├── Task 2.4  新建 pvp-build.html
└── Patch    builds.html（激活 Build 子页面卡片链接）

Phase 3（Priority: P1 — Phase 2 完成后）
├── Task 3.1  新建 server.html（Server Hub）
├── 后续      server-setup.html, server-settings.html, admin-commands.html
└── 全局      Server 内容达标后加入主导航
```

---

# 13. AI Agent 执行指令

对每项 Task，输出以下格式的执行报告：

```
Task: [编号 + 名称]
URL: [操作的文件路径]
Action: [New / Patch / Leave]
Reason: [为什么这么做]

SEO Changes:
  Old Title: [Patch 时填写]
  New Title:
  Old Meta: [Patch 时填写]
  New Meta:
  Old H1: [Patch 时填写]
  New H1:
  H1 Supporting:

Content Changes:
  - [具体改动 1]
  - [具体改动 2]

New Sections Added:
  - [新增 section]

Internal Links Added:
  - [链接 A → 链接 B: 原因]

Schema Changes:
  - [Schema 改动]

SEO Target Keyword:
  - Primary: [keyword]
  - Secondary: [keywords]

Implementation Notes:
  - [注意事项]
```

---

**End of Task Document**
