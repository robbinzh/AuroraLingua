# =============================================================================
# 世界感知协议快速创建脚本
# AuroraLingua 芬兰语学习系统
# =============================================================================

param(
    [Parameter(Mandatory=$false)]
    [string]$模块号 = "",
    
    [Parameter(Mandatory=$false)]
    [int]$词汇数量 = 0,
    
    [Parameter(Mandatory=$false)]
    [string]$主题描述 = "",
    
    [Parameter(Mandatory=$false)]
    [string]$配色主题 = ""
)

# 配色主题选项
$配色选项 = @{
    "1" = @{
        "名称" = "经典蓝紫"
        "主色" = "linear-gradient(135deg, #667eea 0%, #764ba2 100%)"
        "说明" = "稳重专业，适合所有模块"
    }
    "2" = @{
        "名称" = "绿色自然"
        "主色" = "linear-gradient(135deg, #4CAF50 0%, #45a049 100%)"
        "说明" = "清新自然，适合环境、健康主题"
    }
    "3" = @{
        "名称" = "橙色温暖"
        "主色" = "linear-gradient(135deg, #FF9800 0%, #f57c00 100%)"
        "说明" = "温暖活力，适合教育、儿童主题"
    }
    "4" = @{
        "名称" = "深蓝科技"
        "主色" = "linear-gradient(135deg, #1e3c72 0%, #2a5298 100%)"
        "说明" = "专业理性，适合科技、工程主题"
    }
    "5" = @{
        "名称" = "紫色创意"
        "主色" = "linear-gradient(135deg, #8e44ad 0%, #9b59b6 100%)"
        "说明" = "神秘优雅，适合艺术、文化主题"
    }
    "6" = @{
        "名称" = "红色活力"
        "主色" = "linear-gradient(135deg, #e74c3c 0%, #c0392b 100%)"
        "说明" = "动感强烈，适合商业、竞争主题"
    }
}

# 建议的模块配置
$模块建议 = @{
    "三" = @{
        "词汇数量" = 1200
        "主题描述" = "专业进阶"
        "配色" = "深蓝科技"
        "舱室数量" = "18-20个"
    }
    "四" = @{
        "词汇数量" = 1600
        "主题描述" = "高级应用"
        "配色" = "紫色创意"
        "舱室数量" = "20-25个"
    }
    "五" = @{
        "词汇数量" = 2000
        "主题描述" = "母语水平"
        "配色" = "红色活力"
        "舱室数量" = "25-30个"
    }
}

# 显示欢迎信息
Write-Host "╔════════════════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║                 🌟 世界感知协议快速创建工具                   ║" -ForegroundColor Cyan
Write-Host "║                   AuroraLingua 芬兰语学习系统                 ║" -ForegroundColor Cyan
Write-Host "╚════════════════════════════════════════════════════════════╝" -ForegroundColor Cyan
Write-Host ""

# 获取用户输入
if (-not $模块号) {
    Write-Host "📋 当前已完成的模块:" -ForegroundColor Yellow
    Write-Host "   ✅ 模块一: 400词汇 (13个舱室) - 基础词汇" -ForegroundColor Green
    Write-Host "   ✅ 模块二: 800+词汇 (15个舱室) - 扩展词汇" -ForegroundColor Green
    Write-Host ""
    Write-Host "💡 建议的下一个模块:" -ForegroundColor Cyan
    foreach ($模块 in $模块建议.Keys) {
        $info = $模块建议[$模块]
        Write-Host "   📚 模块$模块`: $($info.词汇数量)词汇 ($($info.舱室数量)) - $($info.主题描述)" -ForegroundColor White
    }
    Write-Host ""
    $模块号 = Read-Host "请输入要创建的模块号 (如: 三)"
}

if (-not $词汇数量 -or $词汇数量 -eq 0) {
    if ($模块建议.ContainsKey($模块号)) {
        $建议词汇 = $模块建议[$模块号].词汇数量
        Write-Host "💡 建议词汇数量: $建议词汇" -ForegroundColor Yellow
        $输入 = Read-Host "请输入目标词汇数量 (直接回车使用建议值 $建议词汇)"
        if ($输入) {
            $词汇数量 = [int]$输入
        } else {
            $词汇数量 = $建议词汇
        }
    } else {
        $词汇数量 = Read-Host "请输入目标词汇数量"
        $词汇数量 = [int]$词汇数量
    }
}

if (-not $主题描述) {
    if ($模块建议.ContainsKey($模块号)) {
        $建议主题 = $模块建议[$模块号].主题描述
        Write-Host "💡 建议主题描述: $建议主题" -ForegroundColor Yellow
        $输入 = Read-Host "请输入主题描述 (直接回车使用建议值 '$建议主题')"
        if ($输入) {
            $主题描述 = $输入
        } else {
            $主题描述 = $建议主题
        }
    } else {
        $主题描述 = Read-Host "请输入主题描述 (如: 专业进阶)"
    }
}

if (-not $配色主题) {
    Write-Host ""
    Write-Host "🎨 可选配色主题:" -ForegroundColor Cyan
    foreach ($key in $配色选项.Keys | Sort-Object) {
        $theme = $配色选项[$key]
        Write-Host "   $key. $($theme.名称) - $($theme.说明)" -ForegroundColor White
    }
    Write-Host ""
    
    if ($模块建议.ContainsKey($模块号)) {
        $建议配色 = $模块建议[$模块号].配色
        Write-Host "💡 建议配色: $建议配色" -ForegroundColor Yellow
        $选择 = Read-Host "请选择配色主题编号 (1-6，直接回车使用建议配色)"
        if (-not $选择) {
            $配色主题 = $建议配色
        } else {
            $配色主题 = $配色选项[$选择].名称
        }
    } else {
        $选择 = Read-Host "请选择配色主题编号 (1-6)"
        $配色主题 = $配色选项[$选择].名称
    }
}

Write-Host ""
Write-Host "╔════════════════════════════════════════╗" -ForegroundColor Green
Write-Host "║              📋 配置确认                ║" -ForegroundColor Green  
Write-Host "╠════════════════════════════════════════╣" -ForegroundColor Green
Write-Host "║ 模块编号: 模块$模块号                      ║" -ForegroundColor White
Write-Host "║ 词汇数量: $词汇数量 个                      ║" -ForegroundColor White
Write-Host "║ 主题描述: $主题描述                     ║" -ForegroundColor White
Write-Host "║ 配色主题: $配色主题                     ║" -ForegroundColor White
Write-Host "╚════════════════════════════════════════╝" -ForegroundColor Green
Write-Host ""

$确认 = Read-Host "确认创建? (y/N)"
if ($确认.ToLower() -ne 'y') {
    Write-Host "❌ 操作已取消" -ForegroundColor Red
    exit
}

# 检查模板文件
$模板文件 = "生存模块二·世界感知协议800扩展.html"
if (-not (Test-Path $模板文件)) {
    Write-Host "❌ 错误: 找不到模板文件 '$模板文件'" -ForegroundColor Red
    Write-Host "请确保您在正确的目录下运行此脚本" -ForegroundColor Yellow
    exit 1
}

# 生成文件名
$目标文件 = "生存模块$模块号·世界感知协议$($词汇数量)$主题描述.html"

Write-Host ""
Write-Host "🚀 开始创建世界感知协议模块$模块号..." -ForegroundColor Cyan

# 1. 复制模板文件
try {
    Write-Host "📁 复制模板文件..." -ForegroundColor Yellow
    Copy-Item $模板文件 $目标文件 -Force
    Write-Host "   ✅ 文件创建成功: $目标文件" -ForegroundColor Green
} catch {
    Write-Host "   ❌ 文件复制失败: $($_.Exception.Message)" -ForegroundColor Red
    exit 1
}

# 2. 更新基本配置
Write-Host "📝 更新基本配置..." -ForegroundColor Yellow

try {
    $内容 = Get-Content $目标文件 -Encoding UTF8
    
    # 替换标题
    $内容 = $内容 -replace "模块二：世界感知协议800扩展", "模块$模块号`：世界感知协议$($词汇数量)$主题描述"
    $内容 = $内容 -replace "🌟 模块二：世界感知协议", "🌟 模块$模块号`：世界感知协议"
    $内容 = $内容 -replace "场景化闪卡版 - 零基础感知输入系统", "$主题描述 - $词汇数量 词汇感知输入系统"
    
    # 替换存储键
    $内容 = $内容 -replace "auroraling_module2_800_progress", "auroraling_module$($模块号)_$($词汇数量)_progress"
    
    # 替换跳转链接
    $内容 = $内容 -replace "生存模块二·场景化闪卡舱800扩展\.html", "生存模块$模块号·场景化闪卡舱$($词汇数量)扩展.html"
    
    # 替换总词汇数
    $内容 = $内容 -replace "<span class=`"stat-number`">800\+</span>", "<span class=`"stat-number`">$词汇数量</span>"
    
    # 保存文件
    $内容 | Set-Content $目标文件 -Encoding UTF8
    Write-Host "   ✅ 基本配置更新完成" -ForegroundColor Green
} catch {
    Write-Host "   ❌ 配置更新失败: $($_.Exception.Message)" -ForegroundColor Red
}

# 3. 显示下一步操作指南
Write-Host ""
Write-Host "✅ 世界感知协议模块$模块号 创建完成！" -ForegroundColor Green
Write-Host ""
Write-Host "📍 下一步操作指南:" -ForegroundColor Cyan
Write-Host "   1️⃣  按照SOP完成6个阶段的配置" -ForegroundColor White
Write-Host "   2️⃣  设计 $($词汇数量/50) 到 $($词汇数量/30) 个闪卡舱" -ForegroundColor White
Write-Host "   3️⃣  配置进阶训练模块" -ForegroundColor White
Write-Host "   4️⃣  应用$配色主题配色方案" -ForegroundColor White
Write-Host ""

# 4. 打开编辑器选项
$打开编辑器 = Read-Host "要立即用VS Code打开文件进行编辑吗? (y/N)"
if ($打开编辑器.ToLower() -eq 'y') {
    try {
        Write-Host "🔧 正在打开VS Code..." -ForegroundColor Yellow
        code $目标文件
        
        # 同时打开SOP参考文档
        $SOP文件 = "assets/template/世界感知协议开发SOP模板.md"
        if (Test-Path $SOP文件) {
            code $SOP文件
            Write-Host "   ✅ 已同时打开SOP参考文档" -ForegroundColor Green
        }
    } catch {
        Write-Host "   ⚠️  无法自动打开VS Code，请手动打开文件: $目标文件" -ForegroundColor Yellow
    }
}

Write-Host ""
Write-Host "🎨 配色主题信息:" -ForegroundColor Magenta
$主题信息 = $配色选项.Values | Where-Object { $_.名称 -eq $配色主题 }
if ($主题信息) {
    Write-Host "   名称: $($主题信息.名称)" -ForegroundColor White
    Write-Host "   CSS: $($主题信息.主色)" -ForegroundColor White
    Write-Host "   说明: $($主题信息.说明)" -ForegroundColor White
}

Write-Host ""
Write-Host "📚 参考资料:" -ForegroundColor Cyan
Write-Host "   📖 SOP文档: assets/template/世界感知协议开发SOP模板.md" -ForegroundColor White
Write-Host "   🎨 配色参考: assets/template/配色主题参考.md" -ForegroundColor White
Write-Host "   ✅ 成功案例: 生存模块一·1 世界感知协议.html" -ForegroundColor White
Write-Host "   ✅ 成功案例: 生存模块二·世界感知协议800扩展.html" -ForegroundColor White

Write-Host ""
Write-Host "🎯 预计开发时间: 90分钟 (严格按照SOP执行)" -ForegroundColor Yellow
Write-Host "💡 记住: 严格遵循SOP可确保质量和效率！" -ForegroundColor Cyan

Write-Host ""
Write-Host "═══════════════════════════════════════════════════════════════" -ForegroundColor DarkGray
Write-Host "🌟 创建完成！祝您开发顺利！ 🌟" -ForegroundColor Green
Write-Host "═══════════════════════════════════════════════════════════════" -ForegroundColor DarkGray 