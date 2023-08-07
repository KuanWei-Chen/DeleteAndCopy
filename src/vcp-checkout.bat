@echo off
:: 設定 Branch
set /P new-branch-name=輸入新分支名稱:

:: 設定使否執行 (1: 執行、0: 跳過)
set vcp-data-centralized-flag=0
set vcp-esign-bl-flag=1
set vcp-msg-center-flag=1
set vcp-payment-flag=1
set vcp-payment-momo-bff-flag=1
set vcp-payment-momo-bl-flag=1
set vcp-payment-napas-bff-flag=1
set vcp-payment-napas-bl-flag=1
set vcp-virtual-account-flag=1
set vcp-middle-bo-bff-flag=1
set vcp-middle-bo-cl-flag=1
set vcp-itext-flag=1
set vcp-cdw-batch-flag=1
set vcp-file-batch-flag=1
set vcp-housekeeping-batch-flag=1


:: 設定資料夾
set export-diff-dir=D:\TPI\消金\code\cathay\vcp-diff
set vcp-data-centralized-dir=/d D:\TPI\消金\code\cathay\vcp\data-centralized
set vcp-esign-bl-dir=/d D:\TPI\消金\code\cathay\vcp\esign-bl
set vcp-msg-center-dir=/d D:\TPI\消金\code\cathay\vcp\msg-center
set vcp-payment-dir=/d D:\TPI\消金\code\cathay\vcp\payment
set vcp-payment-momo-bff-dir=/d D:\TPI\消金\code\cathay\vcp\payment-momo-bff
set vcp-payment-momo-bl-dir=/d D:\TPI\消金\code\cathay\vcp\payment-momo-bl
set vcp-payment-napas-bff-dir=/d D:\TPI\消金\code\cathay\vcp\payment-napas-bff
set vcp-payment-napas-bl-dir=/d D:\TPI\消金\code\cathay\vcp\payment-napas-bl
set vcp-virtual-account-dir=/d D:\TPI\消金\code\cathay\vcp\virtual-account-service
set vcp-middle-bo-bff-dir=/d D:\TPI\消金\code\cathay\vcp\middle-bo-bff
set vcp-middle-bo-cl-dir=/d D:\TPI\消金\code\cathay\vcp\middle-bo-cl
set vcp-itext-dir=/d D:\TPI\消金\code\cathay\vcp\itext
set vcp-cdw-batch-dir=/d D:\TPI\消金\code\cathay\vcp\cdw-batch-java
set vcp-file-batch-dir=/d D:\TPI\消金\code\cathay\vcp\file-batch
set vcp-housekeeping-batch-dir=/d D:\TPI\消金\code\cathay\vcp\housekeeping-batch

:: 開始執行
echo Gen Git Diff - Start

:: vcp-data-centralized
if %vcp-data-centralized-flag% == 1 ( 
  goto :vcp-data-centralized-start
) else (
  goto :vcp-data-centralized-end
)
:vcp-data-centralized-start
set project-name=data-centralized
echo %project-name% - Start
cd %vcp-data-centralized-dir%
git checkout main
git pull
git checkout -b %new-branch-name%
echo %project-name% - End
:vcp-data-centralized-end


:: vcp-esign-bl
if %vcp-esign-bl-flag% == 1 ( 
  goto :vcp-esign-bl-start
) else (
  goto :vcp-esign-bl-end
)
:vcp-esign-bl-start
set project-name=esign-bl
echo %project-name% - Start
cd %vcp-esign-bl-dir%
git checkout main
git pull
git checkout -b %new-branch-name%
echo %project-name% - End
:vcp-esign-bl-end

:: vcp-msg-center
if %vcp-msg-center-flag% == 1 ( 
  goto :vcp-msg-center-start
) else (
  goto :vcp-msg-center-end
)
:vcp-msg-center-start
set project-name=msg-center
echo %project-name% - Start
cd %vcp-msg-center-dir%
git checkout main
git pull
git checkout -b %new-branch-name%
echo %project-name% - End
:vcp-msg-center-end


:: vcp-payment
if %vcp-payment-flag% == 1 ( 
  goto :vcp-payment-start
) else (
  goto :vcp-payment-end
)
:vcp-payment-start
set project-name=payment
echo %project-name% - Start
cd %vcp-payment-dir%
git checkout main
git pull
git checkout -b %new-branch-name%
echo %project-name% - End
:vcp-payment-end

:: vcp-payment-momo-bff
if %vcp-payment-momo-bff-flag% == 1 ( 
  goto :vcp-payment-momo-bff-start
) else (
  goto :vcp-payment-momo-bff-end
)
:vcp-payment-momo-bff-start
set project-name=payment-momo-bff
echo %project-name% - Start
cd %vcp-payment-momo-bff-dir%
git checkout main
git pull
git checkout -b %new-branch-name%
echo %project-name% - End
:vcp-payment-momo-bff-end


:: vcp-payment-momo-bl
if %vcp-payment-momo-bl-flag% == 1 ( 
  goto :vcp-payment-momo-bl-start
) else (
  goto :vcp-payment-momo-bl-end
)
:vcp-payment-momo-bl-start
set project-name=payment-momo-bl
echo %project-name% - Start
cd %vcp-payment-momo-bl-dir%
git checkout main
git pull
git checkout -b %new-branch-name%
echo %project-name% - End
:vcp-payment-momo-bl-end

:: vcp-payment-napas-bff
if %vcp-payment-napas-bff-flag% == 1 ( 
  goto :vcp-payment-napas-bff-start
) else (
  goto :vcp-payment-napas-bff-end
)
:vcp-payment-napas-bff-start
set project-name=payment-napas-bff
echo %project-name% - Start
cd %vcp-payment-napas-bff-dir%
git checkout main
git pull
git checkout -b %new-branch-name%
echo %project-name% - End
:vcp-payment-napas-bff-end

:: vcp-payment-napas-bl
if %vcp-payment-napas-bl-flag% == 1 ( 
  goto :vcp-payment-napas-bl-start
) else (
  goto :vcp-payment-napas-bl-end
)
:vcp-payment-napas-bl-start
set project-name=payment-napas-bl
echo %project-name% - Start
cd %vcp-payment-napas-bl-dir%
git checkout main
git pull
git checkout -b %new-branch-name%
echo %project-name% - End
:vcp-payment-napas-bl-end


:: vcp-virtual-account
if %vcp-virtual-account-flag% == 1 ( 
  goto :vcp-virtual-account-start
) else (
  goto :vcp-virtual-account-end
)
:vcp-virtual-account-start
set project-name=virtual-account
echo %project-name% - Start
cd %vcp-virtual-account-dir%
git checkout main
git pull
git checkout -b %new-branch-name%
echo %project-name% - End
:vcp-virtual-account-end


:: vcp-middle-bo-bff
if %vcp-middle-bo-bff-flag% == 1 ( 
  goto :vcp-middle-bo-bff-start
) else (
  goto :vcp-middle-bo-bff-end
)
:vcp-middle-bo-bff-start
set project-name=middle-bo-bff
echo %project-name% - Start
cd %vcp-middle-bo-bff-dir%
git checkout main
git pull
git checkout -b %new-branch-name%
echo %project-name% - End
:vcp-middle-bo-bff-end


:: vcp-middle-bo-cl
if %vcp-middle-bo-cl-flag% == 1 ( 
  goto :vcp-middle-bo-cl-start
) else (
  goto :vcp-middle-bo-cl-end
)
:vcp-middle-bo-cl-start
set project-name=middle-bo-cl
echo %project-name% - Start
cd %vcp-middle-bo-cl-dir%
git checkout main
git pull
git checkout -b %new-branch-name%
echo %project-name% - End
:vcp-middle-bo-cl-end


:: vcp-itext
if %vcp-itext-flag% == 1 ( 
  goto :vcp-itext-start
) else (
  goto :vcp-itext-end
)
:vcp-itext-start
set project-name=itext
echo %project-name% - Start
cd %vcp-itext-dir%
git checkout main
git pull
git checkout -b %new-branch-name%
echo %project-name% - End
:vcp-itext-end

:: vcp-cdw-batch
if %vcp-cdw-batch-flag% == 1 ( 
  goto :vcp-cdw-batch-start
) else (
  goto :vcp-cdw-batch-end
)
:vcp-cdw-batch-start
set project-name=cdw-batch
echo %project-name% - Start
cd %vcp-cdw-batch-dir%
git checkout main
git pull
git checkout -b %new-branch-name%
echo %project-name% - End
:vcp-cdw-batch-end


:: vcp-file-batch
if %vcp-file-batch-flag% == 1 ( 
  goto :vcp-file-batch-start
) else (
  goto :vcp-file-batch-end
)
:vcp-file-batch-start
set project-name=file-batch
echo %project-name% - Start
cd %vcp-file-batch-dir%
git checkout main
git pull
git checkout -b %new-branch-name%
echo %project-name% - End
:vcp-file-batch-end

:: vcp-housekeeping-batch
if %vcp-housekeeping-batch-flag% == 1 ( 
  goto :vcp-housekeeping-batch-start
) else (
  goto :vcp-housekeeping-batch-end
)
:vcp-housekeeping-batch-start
set project-name=housekeeping-batch
echo %project-name% - Start
cd %vcp-housekeeping-batch-dir%
git checkout main
git pull
git checkout -b %new-branch-name%
echo %project-name% - End
:vcp-housekeeping-batch-end

:: 執行完成
echo Gen Git Diff - End

pause