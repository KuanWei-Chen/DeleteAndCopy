@echo off
:: 設定 Branch
set /P new-branch-name=輸入新分支名稱:

:: 設定使否執行 (1: 執行、0: 跳過)
:: 設定使否執行 (1: 執行、0: 跳過)
set vmb-app-bff-flag=1
set vmb-member-cl-flag=1
set vmb-channel-bo-bff-flag=0
set vmb-channel-bo-cl-flag=1
set vmb-channel-notification-bl-flag=0
set vmb-channel-web-flag=1
set vmb-scheduler-flag=0


:: 設定資料夾
set export-diff-dir=D:\TPI\消金\code\cathay\vmb-diff
set vmb-app-bff-dir=/d D:\TPI\消金\code\cathay\vmb\app-bff
set vmb-member-cl-dir=/d D:\TPI\消金\code\cathay\vmb\member-cl
set vmb-channel-bo-bff-dir=/d D:\TPI\消金\code\cathay\vmb\channel-bo-bff
set vmb-channel-bo-cl-dir=/d D:\TPI\消金\code\cathay\vmb\channel-bo-cl
set vmb-channel-notification-bl-dir=/d D:\TPI\消金\code\cathay\vmb\channel-notification-bl
set vmb-channel-web-dir=/d D:\TPI\消金\code\cathay\vmb\channel-web
set vmb-scheduler-dir=/d D:\TPI\消金\code\cathay\vmb\scheduler

:: 開始執行
echo Gen Git Diff - Start

:: vmb-app-bff
if %vmb-app-bff-flag% == 1 ( 
  goto :vmb-app-bff-start
) else (
  goto :vmb-app-bff-end
)
:vmb-app-bff-start
set project-name=app-bff
echo %project-name% - Start
cd %vmb-app-bff-dir%
git add --all
git commit -m %new-branch-name%
git push --set-upstream origin %new-branch-name%
git checkout main
git diff --name-status main %new-branch-name% > %export-diff-dir%\%project-name%-diff.txt
git merge %new-branch-name%
git push
echo %project-name% - End
:vmb-app-bff-end

:: vmb-member-cl
if %vmb-member-cl-flag% == 1 ( 
  goto :vmb-member-cl-start
) else (
  goto :vmb-member-cl-end
)
:vmb-member-cl-start
set project-name=member-cl
echo %project-name% - Start
cd %vmb-member-cl-dir%
git add --all
git commit -m %new-branch-name%
git push --set-upstream origin %new-branch-name%
git checkout main
git diff --name-status main %new-branch-name% > %export-diff-dir%\%project-name%-diff.txt
git merge %new-branch-name%
git push
echo %project-name% - End
:vmb-member-cl-end

:: vmb-channel-bo-bff
if %vmb-channel-bo-bff-flag% == 1 ( 
  goto :vmb-channel-bo-bff-start
) else (
  goto :vmb-channel-bo-bff-end
)
:vmb-channel-bo-bff-start
set project-name=channel-bo-bff
echo %project-name% - Start
cd %vmb-channel-bo-bff-dir%
git add --all
git commit -m %new-branch-name%
git push --set-upstream origin %new-branch-name%
git checkout main
git diff --name-status main %new-branch-name% > %export-diff-dir%\%project-name%-diff.txt
git merge %new-branch-name%
git push
echo %project-name% - End
:vmb-channel-bo-bff-end

:: vmb-channel-bo-cl
if %vmb-channel-bo-cl-flag% == 1 ( 
  goto :vmb-channel-bo-cl-start
) else (
  goto :vmb-channel-bo-cl-end
)
:vmb-channel-bo-cl-start
set project-name=channel-bo-cl
echo %project-name% - Start
cd %vmb-channel-bo-cl-dir%
git add --all
git commit -m %new-branch-name%
git push --set-upstream origin %new-branch-name%
git checkout main
git diff --name-status main %new-branch-name% > %export-diff-dir%\%project-name%-diff.txt
git merge %new-branch-name%
git push
echo %project-name% - End
:vmb-channel-bo-cl-end

:: vmb-channel-notification-bl
if %vmb-channel-notification-bl-flag% == 1 ( 
  goto :vmb-channel-notification-bl-start
) else (
  goto :vmb-channel-notification-bl-end
)
:vmb-channel-notification-bl-start
set project-name=channel-notification-bl
echo %project-name% - Start
cd %vmb-channel-notification-bl-dir%
git add --all
git commit -m %new-branch-name%
git push --set-upstream origin %new-branch-name%
git checkout main
git diff --name-status main %new-branch-name% > %export-diff-dir%\%project-name%-diff.txt
git merge %new-branch-name%
git push
echo %project-name% - End
:vmb-channel-notification-bl-end

:: vmb-channel-web
if %vmb-channel-web-flag% == 1 ( 
  goto :vmb-channel-web-start
) else (
  goto :vmb-channel-web-end
)
:vmb-channel-web-start
set project-name=channel-web
echo %project-name% - Start
cd %vmb-channel-web-dir%
git add --all
git commit -m %new-branch-name%
git push --set-upstream origin %new-branch-name%
git checkout main
git diff --name-status main %new-branch-name% > %export-diff-dir%\%project-name%-diff.txt
git merge %new-branch-name%
git push
echo %project-name% - End
:vmb-channel-web-end

:: vmb-scheduler
if %vmb-scheduler-flag% == 1 ( 
  goto :vmb-scheduler-start
) else (
  goto :vmb-scheduler-end
)
:vmb-scheduler-start
set project-name=scheduler
echo %project-name% - Start
cd %vmb-scheduler-dir%
git add --all
git commit -m %new-branch-name%
git push --set-upstream origin %new-branch-name%
git checkout main
git diff --name-status main %new-branch-name% > %export-diff-dir%\%project-name%-diff.txt
git merge %new-branch-name%
git push
echo %project-name% - End
:vmb-scheduler-end


:: 執行完成
echo Gen Git Diff - End

pause