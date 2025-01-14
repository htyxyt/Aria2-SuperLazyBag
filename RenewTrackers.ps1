# 配置文件路径和下载链接
$ConfigFilePath = "aria2.conf"
$TrackersFileName = "trackers_best.txt"
$TrackersDownloadUrl = "https://raw.githubusercontent.com/ngosang/trackerslist/master/$TrackersFileName"
$TempTrackersFilePath = Join-Path -Path $env:TEMP -ChildPath $TrackersFileName

try {
    # 下载 trackers 文件
    Write-Host "Downloading trackers file from $TrackersDownloadUrl..."
    Invoke-WebRequest -Uri $TrackersDownloadUrl -OutFile $TempTrackersFilePath -ErrorAction Stop

    # 读取并格式化 trackers 文件内容
    Write-Host "Formatting trackers file..."
    $TrackersContent = Get-Content -Path $TempTrackersFilePath -Raw -ErrorAction Stop
    $FormattedTrackers = "bt-tracker=" + ($TrackersContent -replace "\n\n", ",").TrimEnd(',')

    # 读取 aria2.conf 文件内容
    Write-Host "Reading $ConfigFilePath..."
    $ConfigContent = Get-Content -Path $ConfigFilePath -Encoding UTF8 -ErrorAction Stop

    # 检测是否存在 bt-tracker= 行
    $TrackerLineNumber = ($ConfigContent | Select-String -SimpleMatch "bt-tracker=").LineNumber

    if ($TrackerLineNumber) {
        # 如果存在 bt-tracker= 行，直接替换内容
        Write-Host "Updating existing bt-tracker line..."
        $ConfigContent[$TrackerLineNumber - 1] = $FormattedTrackers
    } else {
        # 如果不存在 bt-tracker= 行，追加到文件末尾
        Write-Host "Adding new bt-tracker line to $ConfigFilePath..."
        $ConfigContent += $FormattedTrackers
    }

    # 写入更新后的内容到 aria2.conf
    Set-Content -Path $ConfigFilePath -Value $ConfigContent -Encoding UTF8 -ErrorAction Stop
    Write-Host "Trackers updated successfully in $ConfigFilePath!"
} catch {
    Write-Host "An error occurred: $_" -ForegroundColor Red
} finally {
    # 清理临时文件
    if (Test-Path -Path $TempTrackersFilePath) {
        Remove-Item -Path $TempTrackersFilePath -Force
        Write-Host "Temporary trackers file cleaned up."
    }
}

# 等待用户按键
#Write-Host "Press any key to exit..."
#Read-Host