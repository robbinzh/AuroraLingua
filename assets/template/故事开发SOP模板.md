# 🎯 AuroraLingua 故事开发标准操作程序 (SOP)

> **版本**: v2.0  
> **最后更新**: 2024年12月  
> **适用范围**: 模块二图画书模拟器故事开发  
> **预计总时长**: 60-90分钟

## 📋 开发清单概览

- [ ] **阶段一**: 需求分析与规划 (10分钟)
- [ ] **阶段二**: 快速结构建立 (5分钟) 
- [ ] **阶段三**: 主题定制 (15分钟)
- [ ] **阶段四**: 核心内容替换 (30分钟) ⭐ **核心环节**
- [ ] **阶段五**: 中文脚手架配置 (10分钟)
- [ ] **阶段六**: 导航系统集成 (10分钟)

---

## 🎯 阶段一：需求分析与规划 (10分钟)

### ✅ 任务清单
- [ ] 确定故事主题和核心设定
- [ ] 设计5个场景流程
- [ ] 选择词汇覆盖目标
- [ ] 确定主题配色方案

### 📝 规划模板

**故事基本信息**:
- 故事标题：`_____________`
- 芬兰语标题：`_____________`  
- 故事编号：`模块二·__`
- 主题类型：`_____________`

**5个场景设计**:
1. **场景1**: `_____________` - `_____________`
2. **场景2**: `_____________` - `_____________`
3. **场景3**: `_____________` - `_____________`
4. **场景4**: `_____________` - `_____________`
5. **场景5**: `_____________` - `_____________`

**词汇覆盖目标**:
- 主要词汇类别：`_____________`
- 目标词汇数量：`_____________`
- 核心词汇举例：`_____________`

### 🎨 预设配色方案

选择适合的主题配色：

```css
/* 自然四季主题 */
background: linear-gradient(135deg, #4CAF50, #FF9800);

/* 城市现代主题 */  
background: linear-gradient(135deg, #1DD1A1, #55A3FF);

/* 温暖情感主题 */
background: linear-gradient(135deg, #ff6b6b, #ee5a24);

/* 科技专业主题 */
background: linear-gradient(135deg, #667eea, #764ba2);

/* 清新医疗主题 */
background: linear-gradient(135deg, #00d2ff, #928DAB);

/* 自定义主题 */
background: linear-gradient(135deg, #______, #______);
```

---

## 🚀 阶段二：快速结构建立 (5分钟)

### ✅ 任务清单
- [ ] 复制最新模板文件
- [ ] 重命名为新故事文件

### 💻 操作命令

**推荐使用最新模板**：
```powershell
# 复制四季故事作为最新模板（推荐）
copy "生存模块二·12 四季的爱好 - 图画书模拟器.html" "生存模块二·[编号] [故事名] - 图画书模拟器.html"

# 或复制城市故事模板
copy "生存模块二·11 城市里的一天 - 图画书模拟器.html" "生存模块二·[编号] [故事名] - 图画书模拟器.html"
```

**文件命名规范**：
- 格式：`生存模块二·[编号] [中文标题] - 图画书模拟器.html`
- 示例：`生存模块二·13 学校的一天 - 图画书模拟器.html`

---

## 🎨 阶段三：主题定制 (15分钟)

### ✅ 任务清单
- [ ] 更新页面标题 (title标签)
- [ ] 更新页面主标题 (h1标签)
- [ ] 更新副标题 (subtitle)
- [ ] 替换6-8处配色定义
- [ ] 更新默认图片路径和alt文本
- [ ] 更新插图标题

### 🔧 具体操作

#### 1. 页面标题更新
```html
<!-- 替换 -->
<title>🌸 Vuodenaikojen Harrastukset - 四季的爱好 | 模块二·12 四季主题图画书模拟器 - AuroraLingua</title>

<!-- 为 -->
<title>[图标] [芬兰语标题] - [中文标题] | 模块二·[编号] [主题]图画书模拟器 - AuroraLingua</title>
```

#### 2. 主标题和副标题
```html
<h1>[图标] [芬兰语标题] - [中文标题]</h1>
<div class="subtitle">模块二·[编号]：[主题]综合学习 - 图画书模拟器</div>
```

#### 3. 配色替换位置 (6-8处)
需要替换的CSS位置：
- `body` 背景渐变
- `.header` 背景渐变  
- `.progress-fill` 背景渐变
- `.illustration-panel` 背景和边框色
- `.illustration` 阴影色
- `.illustration-title` 文字色
- `.toolbar-btn` 背景渐变和悬停色

#### 4. 默认图片更新
```html
<img class="illustration" id="sceneIllustration" src="../assets/image/M2_[主题]_S1.png" alt="[场景1描述]" />
<div class="illustration-title" id="sceneIllustrationTitle">[场景1标题]</div>
```

---

## ⭐ 阶段四：核心内容替换 (30分钟) **关键阶段**

### ✅ 任务清单
- [ ] 替换故事场景数据 (5个场景)
- [ ] 重构词汇数据库
- [ ] 更新语法标记类型

### 📖 故事场景数据模板

```javascript
const storyScenes = [
    {
        id: 1,
        title: "[芬兰语场景标题1]",
        titleChinese: "[中文场景标题1]", 
        imagePath: "../assets/image/M2_[主题]_S1.png",
        imageAlt: "[场景1图片描述]",
        illustrationTitle: "[场景1插图标题]",
        content: `
            <p><span class="grammar-olla vocab-word">芬兰语句子1</span></p>
            <p><span class="vocab-word grammar-[类型]">芬兰语句子2</span></p>
            <p><span class="grammar-verb vocab-word">芬兰语句子3</span></p>
            <p><span class="vocab-word grammar-[类型]">芬兰语句子4</span></p>
        `
    },
    // ... 重复5个场景
];
```

### 📚 词汇数据库模板

```javascript
const vocabularyData = {
    // === 动词变位（带原型透视） ===
    "动词变位形式": {
        prototype: "动词原型",
        chinese: "中文意思",
        form: "语法形式说明",
        type: "动词变位",
        color: "🟢"
    },

    // === 名词格变（带原型透视） ===
    "格变形式": {
        prototype: "名词原型", 
        chinese: "中文意思",
        form: "格变说明",
        type: "名词格变",
        color: "🟣"
    },

    // === 基本词汇 ===
    "基本词汇": "中文翻译",
    
    // 按主题分组添加词汇...
};
```

### 🏷️ 语法标记类型参考

常用语法标记类型：
- `grammar-olla` - olla动词
- `grammar-verb` - 一般动词
- `grammar-noun` - 名词
- `grammar-adjective` - 形容词
- `grammar-dynamic` - 动态格(去向)
- `grammar-static` - 静态格(位置)
- `grammar-partitive` - 部分格
- `grammar-accusative` - 宾格
- `grammar-season` - 季节词汇
- `grammar-hobby` - 爱好词汇
- `grammar-education` - 教育词汇
- `grammar-profession` - 职业词汇
- `grammar-time` - 时间词汇
- `grammar-abstract` - 抽象概念

---

## 🇨🇳 阶段五：中文脚手架配置 (10分钟)

### ✅ 任务清单
- [ ] 替换中文翻译数据
- [ ] 测试脚手架切换功能

### 📝 翻译数据模板

```javascript
const chineseTranslations = {
    1: [ // 场景1
        "中文翻译句子1",
        "中文翻译句子2", 
        "中文翻译句子3",
        "中文翻译句子4"
    ],
    2: [ // 场景2
        "中文翻译句子1",
        "中文翻译句子2",
        "中文翻译句子3", 
        "中文翻译句子4"
    ],
    // ... 继续5个场景
};
```

---

## 🧭 阶段六：导航系统集成 (10分钟)

### ✅ 任务清单
- [ ] 在导航页面添加新故事卡片
- [ ] 设置卡片图标、配色、描述

### 🎴 导航卡片模板

在 `生存模块二·世界感知协议800扩展.html` 中添加：

```html
<!-- 模块2.[编号] [主题]图画书模拟器 -->
<div class="training-card" style="background: linear-gradient(135deg, [颜色1], [颜色2]); color: white; border-radius: 20px; padding: 25px; flex: 1; min-width: 280px; max-width: 350px; transition: transform 0.3s ease; cursor: pointer;" 
     onclick="window.location.href='生存模块二·[编号] [故事名] - 图画书模拟器.html'"
     onmouseover="this.style.transform='translateY(-5px) scale(1.02)'"
     onmouseout="this.style.transform='translateY(0) scale(1)'">
    <div class="training-icon" style="font-size: 3rem; margin-bottom: 15px;">[图标]</div>
    <h4 style="margin-bottom: 10px; font-size: 1.3rem;">[中文标题]</h4>
    <p style="opacity: 0.9; margin-bottom: 20px; font-size: 0.95rem;">
        [主题]图画书模拟器<br>
        5个场景：[场景1]→[场景2]→[场景3]→[场景4]→[场景5]
    </p>
    <div style="background: rgba(255,255,255,0.2); color: white; text-decoration: none; padding: 12px 25px; border-radius: 25px; font-weight: 600; display: inline-block; transition: all 0.3s ease; backdrop-filter: blur(10px);">
        [图标] [按钮文字]
    </div>
</div>
```

---

## ✅ 质量检查清单

### 功能测试
- [ ] 场景切换正常 (前进/后退按钮)
- [ ] 词汇悬停提示工作
- [ ] 语音播放功能正常
- [ ] 语法高亮切换正常  
- [ ] 中文脚手架切换正常
- [ ] 进度条显示正确
- [ ] 键盘快捷键响应

### 内容检查
- [ ] 5个场景内容完整
- [ ] 图片路径正确
- [ ] 词汇翻译准确
- [ ] 语法标记合理
- [ ] 中文翻译对应正确

### 样式检查
- [ ] 配色主题一致
- [ ] 响应式布局正常
- [ ] 动画效果流畅
- [ ] 字体大小合适

---

## 📚 参考资源

### 已成功的故事案例
1. **医生主题** (模块二·9) - 医疗词汇，红色主题
2. **戒指主题** (模块二·10) - 情感词汇，紫色主题  
3. **城市主题** (模块二·11) - 都市词汇，青绿主题
4. **四季主题** (模块二·12) - 季节词汇，自然主题

### 主题词汇库参考
- **家庭主题**: perhe, äiti, isä, lapsi, vanhemmat
- **学校主题**: koulu, opettaja, luokka, kurssi, oppilas
- **工作主题**: työ, toimisto, kollega, kokous, projekti  
- **旅行主题**: matka, hotelli, lentokone, loma, matkatavara
- **食物主题**: ruoka, ravintola, keittiö, resepti, maistaa
- **运动主题**: urheilu, jalkapallo, juosta, voittaa, kilpailu

### 配色主题建议
- **温暖主题**: 红橙色系，适合情感、家庭主题
- **清新主题**: 蓝绿色系，适合自然、旅行主题  
- **专业主题**: 深蓝紫色系，适合工作、教育主题
- **活力主题**: 明亮色系，适合运动、娱乐主题

---

## 🎯 SOP成功指标

- ✅ **时间效率**: 总开发时间控制在90分钟内
- ✅ **功能完整**: 所有交互功能正常运行
- ✅ **代码复用**: 复用率达到90%以上
- ✅ **主题一致**: 配色和内容风格统一
- ✅ **质量保证**: 通过所有功能测试项

---

*最后更新：基于四季故事开发经验优化* 