@echo off
:: �]�w Branch
set /P tag-name=��J tag�W��:

:: �]�w�ϧ_���� (1: ����B0: ���L)
set vmb-app-bff-flag=1
set vmb-member-cl-flag=1	
set vmb-channel-bo-bff-flag=0
set vmb-channel-bo-cl-flag=1
set vmb-channel-notification-bl-flag=0
set vmb-channel-web-flag=1
set vmb-scheduler-flag=0

:: �]�w��Ƨ�
set vmb-app-bff-dir=/d D:\TPI\����\code\tpi\vmb\vn-loancloud-app-bff
set vmb-member-cl-dir=/d D:\TPI\����\code\tpi\vmb\vn-loancloud-user-cl
set vmb-channel-bo-bff-dir=/d D:\TPI\����\code\tpi\vmb\vn-loancloud-channel-bo-bff
set vmb-channel-bo-cl-dir=/d D:\TPI\����\code\tpi\vmb\vn-loancloud-channel-bo-cl
set vmb-channel-notification-bl-dir=/d D:\TPI\����\code\tpi\vmb\vn-loancloud-channel-notification-bl
set vmb-channel-web-dir=/d D:\TPI\����\code\tpi\vmb\channel-web
set vmb-scheduler-dir=/d D:\TPI\����\code\tpi\vmb\scheduler

:: �}�l����
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
git pull
git rev-parse HEAD
git tag %tag-name%
git push --tags
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
git pull
git rev-parse HEAD
git tag %tag-name%
git push --tags
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
git pull
git rev-parse HEAD
git tag %tag-name%
git push --tags
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
git pull
git rev-parse HEAD
git tag %tag-name%
git push --tags
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
git pull
git rev-parse HEAD
git tag %tag-name%
git push --tags
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
git pull
git rev-parse HEAD
git tag %tag-name%
git push --tags
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
git pull
git rev-parse HEAD
git tag %tag-name%
git push --tags
echo %project-name% - End
:vmb-scheduler-end

:: ���槹��
echo Gen Git Diff - End

pause