@echo off

echo.
REM 顯示中文
git config --global core.quotepath false

REM 判斷資料夾是否存在
echo.
echo "####### 1.exist folder [.git] #######"
if not exist ".git" (
git init
git remote add origin https://github.com/Roger-0930136596/demo_b.git
git remote 
) else (
echo ".git already exists."
)

echo.
echo.
echo "####### 2.start push #######"
git add .

echo.
echo.
echo "####### 3.show status #######"
git status

REM 間格1秒再往下執行
timeout /t 1 /nobreak > NUL

echo.
echo.
echo "####### 4.commit the change to the local repository #######"
set now=%date% %time%
git commit -m "%now%"


echo.
echo.
echo "####### 5.push the change to the remote git server #######"
git push -f origin master


echo.
echo.
echo "####### 6.batch execution complete #######"
pause

