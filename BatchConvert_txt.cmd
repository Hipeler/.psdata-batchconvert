@echo off
:: 请求管理员权限
fltmc >nul 2>&1 || (
    echo Requesting administrator privileges...
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:: 获取当前脚本所在目录
set "script_path=%~dp0"

:: 定义输入/输出路径（相对于脚本位置）
set "input_dir=%script_path%input_psdata"
set "output_dir=%script_path%output_txt"

:: 自动创建输出目录（如果不存在）
if not exist "%output_dir%\" (
    echo Creating output directory: %output_dir%
    mkdir "%output_dir%"
)

:: 执行转换命令
echo Starting PicoScope batch conversion...
start /wait "" "C:\Program Files\Pico Technology\PicoScope 7 T&M Stable\PicoScope.exe" BatchConvert "%input_dir%" "%output_dir%" .txt

:: 结果提示
if %errorlevel% equ 0 (
    echo Conversion succeeded!
) else (
    echo Conversion failed! Error code: %errorlevel%
)
pause