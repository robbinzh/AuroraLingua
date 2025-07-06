# 🎯 AuroraLingua 快速故事创建脚本
# 版本: v1.0
# 用途: 基于SOP快速创建新故事文件

param(
    [Parameter(Mandatory=$true, HelpMessage="故事编号，如：13")]
    [string]$StoryNumber,
    
    [Parameter(Mandatory=$true, HelpMessage="中文故事标题，如：学校的一天")]
    [string]$ChineseTitle,
    
    [Parameter(Mandatory=$false, HelpMessage="芬兰语标题，如：Koulupäivä")]
    [string]$FinnishTitle = "",
    
    [Parameter(Mandatory=$false, HelpMessage="主题类型，如：教育/运动/旅行")]
    [string]$ThemeType = "",
    
    [Parameter(Mandatory=$false, HelpMessage="使用的模板文件")]
    [string]$TemplateFile = "生存模块二·12 四季的爱好 - 图画书模拟器.html"
)

# 颜色输出函数
function Write-ColorOutput($Message, $Color) {
    Write-Host $Message -ForegroundColor $Color
}

# 主函数
function Main {
    Write-ColorOutput "🎯 AuroraLingua 快速故事创建工具" "Cyan"
    Write-ColorOutput "=================================" "Cyan"
    
    # 生成新文件名
    $NewFileName = "生存模块二·$StoryNumber $ChineseTitle - 图画书模拟器.html"
    
    # 检查模板文件是否存在
    if (!(Test-Path $TemplateFile)) {
        Write-ColorOutput "❌ 错误：模板文件不存在：$TemplateFile" "Red"
        Write-ColorOutput "请确保在正确的目录下运行此脚本" "Yellow"
        return
    }
    
    # 检查新文件是否已存在
    if (Test-Path $NewFileName) {
        Write-ColorOutput "⚠️  警告：文件已存在：$NewFileName" "Yellow"
        $Overwrite = Read-Host "是否覆盖现有文件？(y/n)"
        if ($Overwrite -ne "y" -and $Overwrite -ne "Y") {
            Write-ColorOutput "❌ 操作已取消" "Red"
            return
        }
    }
    
    # 复制模板文件
    try {
        Copy-Item $TemplateFile $NewFileName -Force
        Write-ColorOutput "✅ 成功创建故事文件：$NewFileName" "Green"
    }
    catch {
        Write-ColorOutput "❌ 复制文件失败：$($_.Exception.Message)" "Red"
        return
    }
    
    # 显示下一步操作建议
    Write-ColorOutput "`n📋 下一步操作建议：" "Cyan"
    Write-ColorOutput "=================================" "Cyan"
    
    Write-ColorOutput "🎨 阶段三：主题定制 (15分钟)" "Yellow"
    if ($FinnishTitle -ne "") {
        Write-ColorOutput "   - 芬兰语标题：$FinnishTitle" "White"
    } else {
        Write-ColorOutput "   - ⚠️  请确定芬兰语标题" "Yellow"
    }
    
    if ($ThemeType -ne "") {
        Write-ColorOutput "   - 主题类型：$ThemeType" "White"
    } else {
        Write-ColorOutput "   - ⚠️  请确定主题类型" "Yellow"
    }
    
    Write-ColorOutput "   - 更新页面标题和主标题" "White"
    Write-ColorOutput "   - 选择配色方案并替换6-8处CSS" "White"
    Write-ColorOutput "   - 更新默认图片路径" "White"
    
    Write-ColorOutput "`n⭐ 阶段四：核心内容替换 (30分钟)" "Yellow"
    Write-ColorOutput "   - 设计5个场景的故事内容" "White"
    Write-ColorOutput "   - 重构词汇数据库" "White"
    Write-ColorOutput "   - 更新语法标记" "White"
    
    Write-ColorOutput "`n🇨🇳 阶段五：中文脚手架配置 (10分钟)" "Yellow"
    Write-ColorOutput "   - 翻译5个场景的中文内容" "White"
    
    Write-ColorOutput "`n🧭 阶段六：导航系统集成 (10分钟)" "Yellow"
    Write-ColorOutput "   - 在'生存模块二·世界感知协议800扩展.html'中添加卡片" "White"
    
    # 显示图片文件建议
    Write-ColorOutput "`n📸 图片文件建议：" "Cyan"
    Write-ColorOutput "=================================" "Cyan"
    $ImagePrefix = Read-Host "请输入图片主题前缀（如：M2_school, M2_travel）"
    if ($ImagePrefix -ne "") {
        Write-ColorOutput "需要准备的图片文件：" "White"
        for ($i = 1; $i -le 5; $i++) {
            Write-ColorOutput "   - ${ImagePrefix}_S${i}.png" "White"
        }
    }
    
    # 打开文件选项
    Write-ColorOutput "`n🔧 快速操作：" "Cyan"
    Write-ColorOutput "=================================" "Cyan"
    $OpenFile = Read-Host "是否立即用默认编辑器打开新文件？(y/n)"
    if ($OpenFile -eq "y" -or $OpenFile -eq "Y") {
        try {
            Invoke-Item $NewFileName
            Write-ColorOutput "✅ 已打开文件编辑器" "Green"
        }
        catch {
            Write-ColorOutput "❌ 无法打开文件：$($_.Exception.Message)" "Red"
        }
    }
    
    Write-ColorOutput "`n🎉 故事创建完成！按照SOP模板继续开发吧！" "Green"
}

# 显示帮助信息
function Show-Help {
    Write-ColorOutput "🎯 AuroraLingua 快速故事创建工具" "Cyan"
    Write-ColorOutput "=================================" "Cyan"
    Write-ColorOutput "用法:" "White"
    Write-ColorOutput "  .\快速故事创建脚本.ps1 -StoryNumber <编号> -ChineseTitle <中文标题> [-FinnishTitle <芬兰语标题>] [-ThemeType <主题>]" "White"
    Write-ColorOutput "`n示例:" "White"
    Write-ColorOutput "  .\快速故事创建脚本.ps1 -StoryNumber 13 -ChineseTitle '学校的一天' -FinnishTitle 'Koulupäivä' -ThemeType '教育'" "Yellow"
    Write-ColorOutput "`n参数说明:" "White"
    Write-ColorOutput "  -StoryNumber   : 故事编号（必需）" "White"
    Write-ColorOutput "  -ChineseTitle  : 中文标题（必需）" "White"
    Write-ColorOutput "  -FinnishTitle  : 芬兰语标题（可选）" "White"
    Write-ColorOutput "  -ThemeType     : 主题类型（可选）" "White"
    Write-ColorOutput "  -TemplateFile  : 模板文件（可选，默认使用四季故事）" "White"
}

# 主程序入口
if ($args -contains "-h" -or $args -contains "--help" -or $args -contains "help") {
    Show-Help
}
else {
    Main
} 