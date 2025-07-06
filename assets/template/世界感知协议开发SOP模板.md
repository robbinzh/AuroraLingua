# 世界感知协议开发 SOP 模板

## 🎯 概述

世界感知协议是AuroraLingua核心的词汇输入系统，采用"婴儿模仿学习"原则，通过场景化闪卡舱进行纯感知输入。本SOP基于成功开发的**模块一**（400词汇）和**模块二**（800+词汇）总结而成。

## 📊 已完成模块分析

### 模块一特点
- **词汇总量**: 400个基础词汇
- **闪卡舱数量**: 13个基础舱室
- **进阶训练**: 3个图画书模拟器
- **主题范围**: 家庭、身体、食物、家居、衣服、自然、动物、交通、地点、时间、颜色、动词、其他

### 模块二特点
- **词汇总量**: 800+扩展词汇
- **闪卡舱数量**: 15个扩展舱室
- **进阶训练**: 5个图画书模拟器
- **主题范围**: 职业、教育、抽象概念、动词分类（认知/交流/行为）、副词小品词

## 🔄 标准开发流程（6阶段，总时长90分钟）

### 阶段一：需求分析与规划（15分钟）

#### 任务清单
- [ ] 确定目标词汇数量（建议400/800/1200递增）
- [ ] 分析词汇主题分布和难度层次
- [ ] 设计闪卡舱分组策略（13-20个舱室）
- [ ] 规划进阶训练模块数量（3-5个）
- [ ] 确定配色主题和视觉风格

#### 词汇分组原则
```
基础模块（400词汇）：
- 具体名词为主（70%）
- 基础动词和形容词（20%）
- 功能词汇（10%）

扩展模块（800+词汇）：
- 专业术语和抽象概念（40%）
- 动词变位和语法结构（30%）
- 副词和连接词（20%）
- 高频口语表达（10%）
```

#### 闪卡舱设计模式
- **主题集中**: 每个舱室15-50个相关词汇
- **认知递进**: 从具体到抽象，从简单到复杂
- **场景化**: 结合实际使用场景和情境
- **均衡分布**: 避免单个舱室词汇过多或过少

### 阶段二：基础结构建立（10分钟）

#### 创建文件框架
```bash
# 复制已有模板
copy "生存模块一·1 世界感知协议.html" "生存模块[X]·世界感知协议.html"
```

#### 必要的文件路径配置
- 进度存储键: `auroraling_module[X]_progress`
- 闪卡舱链接: `生存模块[X]·场景化闪卡舱.html`
- 图画书链接: `生存模块[X]·[N] [主题] - 图画书模拟器.html`

### 阶段三：视觉主题定制（15分钟）

#### 配色方案选择
```css
/* 经典蓝紫渐变（通用） */
background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);

/* 绿色自然主题 */
background: linear-gradient(135deg, #4CAF50 0%, #45a049 100%);

/* 橙色温暖主题 */
background: linear-gradient(135deg, #FF9800 0%, #f57c00 100%);

/* 粉色柔和主题 */
background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);
```

#### 关键替换位置
1. **页面标题**: `<title>模块[X]：世界感知协议[副标题]</title>`
2. **主标题**: `<h1>🌟 模块[X]：世界感知协议</h1>`
3. **背景渐变**: `body { background: linear-gradient(...) }`
4. **总词汇数**: `<span class="stat-number">[数量]</span>`

### 阶段四：闪卡舱内容配置（30分钟）

#### 闪卡舱HTML模板
```html
<!-- 闪卡舱[N]：[主题] -->
<div class="pod-card" onclick="enterPod('[舱室ID]')" data-pod="[舱室ID]">
    <div class="pod-number">[序号]</div>
    <span class="pod-emoji">[表情符号]</span>
    <h3 class="pod-title">[芬兰语标题]</h3>
    <p class="pod-subtitle">[中文副标题]</p>
    <div class="scaffold-text">
        [引导性描述文本，营造学习情境]
    </div>
    <span class="word-count">[数量]个词汇</span>
</div>
```

#### 舱室主题规划模板
```
模块三（1200词汇）建议主题：
01. 🏫 Koulutus Syvennetty - 教育深化（学科、学位、研究）
02. 💼 Työ Ammattimaisuus - 专业工作（会议、项目、管理）
03. 🏥 Terveys Kokonaisvaltainen - 全面健康（医疗、心理、康复）
04. 💰 Talous ja Rahoitus - 经济与金融（银行、投资、预算）
05. 🎭 Kulttuuri ja Taide - 文化与艺术（音乐、文学、戏剧）
06. 🔬 Tiede ja Teknologia - 科学与技术（研究、发明、数据）
07. 🌍 Ympäristö ja Luonto - 环境与自然（生态、保护、可持续）
08. 🏛️ Politiikka ja Yhteiskunta - 政治与社会（法律、权利、民主）
09. 🛍️ Kauppa ja Palvelut - 商业与服务（零售、客服、电商）
10. 🎯 Tavoitteet ja Suunnittelu - 目标与规划（计划、策略、未来）
```

#### 词汇构词法标注规范（**必须严格执行**）
每个词汇条目必须包含 `notes` 字段，标注构词法信息：

```javascript
// 标准词汇条目格式
{ 
    finnish: '芬兰语词汇', 
    chinese: '中文翻译', 
    emoji: '表情符号',
    notes: '构词法标注'
}

// 构词法分类标准：
// 1. Juurisana (基础词) - 无法进一步分解的根词
{ finnish: 'koira', chinese: '狗', emoji: '🐕', notes: 'Juurisana (基础词)' }

// 2. Yhdyssana (复合词) - 由两个或多个词组合而成
{ finnish: 'hammasharja', chinese: '牙刷', emoji: '🪥', notes: 'Yhdyssana (复合词): hammas (牙齿) + harja (刷子)' }

// 3. Johdos (派生词) - 通过后缀、前缀等形式派生
{ finnish: 'onnellinen', chinese: '幸福的', emoji: '😊', notes: 'Johdos (派生词): onni (幸福) + -llinen (形容词后缀)' }

// 4. 特殊情况标注
{ finnish: 'aivot', chinese: '大脑', emoji: '🧠', notes: 'Juurisana (基础词), 通常用复数' }
{ finnish: 'kiva', chinese: '好的', emoji: '👍', notes: 'Juurisana (基础词), 口语化' }
```

#### JavaScript词汇数量配置
```javascript
// 闪卡舱词汇数量
const podWordCounts = {
    '[舱室ID1]': [数量],
    '[舱室ID2]': [数量],
    // ... 继续添加所有舱室
};
```

### 阶段五：进阶训练区域配置（15分钟）

#### 训练卡片模板
```html
<!-- 认知烧录训练 -->
<div class="training-card" style="background: linear-gradient(135deg, #667eea, #764ba2);" 
     onclick="window.location.href='生存模块[X] 2 回声练习_·认知烧录与实体固化[词汇量]扩展.html'">
    <div class="training-icon">🔮</div>
    <h4>认知烧录与实体固化</h4>
    <p>双阶梯训练：回声定位器 + 心像生成器<br>深度强化词汇-图像映射，达到瞬间识别</p>
    <div class="cta-button">🎯 开始训练</div>
</div>

<!-- 图画书模拟器 -->
<div class="training-card" style="background: linear-gradient(135deg, #主题色1, #主题色2);" 
     onclick="window.location.href='生存模块[X]·[N] [故事主题] - 图画书模拟器.html'">
    <div class="training-icon">[图标]</div>
    <h4>[故事标题]</h4>
    <p>[故事描述]<br>[场景数量]个场景：[场景概要]</p>
    <div class="cta-button">[行动按钮] 开始体验</div>
</div>
```

#### 进阶训练配色建议
```css
/* 认知训练 - 蓝紫色 */
background: linear-gradient(135deg, #667eea, #764ba2);

/* 故事主题 - 根据内容选择 */
医疗主题: linear-gradient(135deg, #ff6b6b, #ee5a24);
自然主题: linear-gradient(135deg, #28a745, #20c997);
城市主题: linear-gradient(135deg, #1DD1A1, #55A3FF);
情感主题: linear-gradient(135deg, #6f42c1, #007bff);
```

### 阶段六：JavaScript功能配置（5分钟）

#### 必要配置更新
```javascript
// 1. 存储键名更新
const STORAGE_KEY = 'auroraling_module[X]_progress';

// 2. 舱室跳转链接更新
window.location.href = `生存模块[X]·场景化闪卡舱[词汇量]扩展.html?pod=${podId}`;

// 3. 词汇总数验证
确保所有podWordCounts的数值总和 = 目标词汇数量
```

#### 功能验证清单
- [ ] 进度条计算正确
- [ ] 词汇数量统计准确
- [ ] 卡片点击跳转链接有效
- [ ] 本地存储功能正常
- [ ] 重置功能工作正常
- [ ] 响应式布局适配移动端

## 🎨 配色主题库

### 基础主题系列
```css
/* 1. 经典蓝紫（通用） */
主色: linear-gradient(135deg, #667eea 0%, #764ba2 100%)
说明: 稳重专业，适合所有模块

/* 2. 绿色自然（生态环保） */
主色: linear-gradient(135deg, #4CAF50 0%, #45a049 100%)
说明: 清新自然，适合环境、健康主题

/* 3. 橙色温暖（教育成长） */
主色: linear-gradient(135deg, #FF9800 0%, #f57c00 100%)
说明: 温暖活力，适合教育、儿童主题
```

### 进阶主题系列
```css
/* 4. 深蓝科技（科学技术） */
主色: linear-gradient(135deg, #1e3c72 0%, #2a5298 100%)
说明: 专业理性，适合科技、工程主题

/* 5. 紫色创意（艺术文化） */
主色: linear-gradient(135deg, #8e44ad 0%, #9b59b6 100%)
说明: 神秘优雅，适合艺术、文化主题

/* 6. 红色活力（商业金融） */
主色: linear-gradient(135deg, #e74c3c 0%, #c0392b 100%)
说明: 动感强烈，适合商业、竞争主题
```

## 📋 质量检查清单

### 内容完整性
- [ ] 所有闪卡舱主题明确且不重复
- [ ] 词汇数量分布合理（15-50个/舱室）
- [ ] 进阶训练模块数量适中（3-5个）
- [ ] 中文脚手架描述生动有趣
- [ ] **每个词汇条目必须包含构词法标注（notes字段）**
- [ ] **构词法分类准确：Juurisana/Yhdyssana/Johdos**
- [ ] **复合词和派生词的组成部分解释清楚**

### 技术功能性
- [ ] 页面加载正常，无JavaScript错误
- [ ] 所有链接指向正确的文件路径
- [ ] 进度存储和重置功能正常
- [ ] 响应式设计在移动端正常显示

### 用户体验
- [ ] 视觉风格统一协调
- [ ] 交互反馈及时流畅
- [ ] 学习路径逻辑清晰
- [ ] 文案表达亲切自然

### 代码质量
- [ ] HTML结构语义化
- [ ] CSS样式模块化
- [ ] JavaScript代码可维护
- [ ] 注释充分且准确

## 🔗 相关文件依赖

### 必要的配套文件
1. **场景化闪卡舱**: `生存模块[X]·场景化闪卡舱[词汇量]扩展.html`
2. **认知烧录训练**: `生存模块[X] 2 回声练习_·认知烧录与实体固化[词汇量]扩展.html`
3. **图画书模拟器**: `生存模块[X]·[N] [主题] - 图画书模拟器.html`

### 资源文件需求
- 词汇语音文件: `assets/audio/module[X]/`
- 配图资源: `assets/image/M[X]_[主题]_S[N].png`
- 图标资源: `assets/icons/[主题].svg`

## 📈 成功指标

### 开发效率指标
- **时间成本**: 单个模块开发 ≤ 90分钟
- **代码复用率**: ≥ 80%
- **bug修复时间**: ≤ 15分钟

### 用户体验指标
- **加载速度**: 首屏加载 ≤ 2秒
- **交互响应**: 点击响应 ≤ 200ms
- **学习连贯性**: 用户路径无断点

### 教学效果指标
- **词汇覆盖**: 目标词汇100%覆盖
- **主题平衡**: 各主题词汇数量差异 ≤ 30%
- **难度递进**: 从具体到抽象的清晰层次

## 🚀 快速启动脚本

```powershell
# 创建新的世界感知协议模块
param(
    [string]$模块号 = "三",
    [int]$词汇数量 = 1200,
    [string]$主题描述 = "专业进阶",
    [string]$配色主题 = "深蓝科技"
)

Write-Host "🌟 开始创建世界感知协议模块$模块号..." -ForegroundColor Cyan

# 1. 复制模板文件
Copy-Item "生存模块二·世界感知协议800扩展.html" "生存模块$模块号·世界感知协议$主题描述.html"

# 2. 更新基本信息
Write-Host "📝 正在更新基本配置..." -ForegroundColor Yellow

# 3. 打开编辑器
code "生存模块$模块号·世界感知协议$主题描述.html"

Write-Host "✅ 世界感知协议模块$模块号 创建完成！" -ForegroundColor Green
Write-Host "📍 下一步：按照SOP完成6个阶段的配置" -ForegroundColor White
```

## 📚 参考资源

### 成功案例
- **模块一**: 生存模块一·1 世界感知协议.html（400词汇，13舱室）
- **模块二**: 生存模块二·世界感知协议800扩展.html（800+词汇，15舱室）

### 设计原则文档
- **婴儿模仿学习原则**: 纯感知输入，无语法解释
- **场景化认知**: 词汇与情境的直接映射
- **渐进式复杂度**: 从具体名词到抽象概念

### 技术参考
- **CSS Grid布局**: 响应式卡片网格系统
- **localStorage API**: 学习进度本地持久化
- **Web Audio API**: 点击音效增强体验

---

**版本**: v1.0  
**创建时间**: 2024年12月  
**适用范围**: AuroraLingua世界感知协议系列  
**维护者**: AuroraLingua开发团队

> 💡 **提示**: 严格遵循此SOP可确保90分钟内完成高质量世界感知协议模块，保持系统的一致性和可维护性。 