@echo off

:: 設定資料夾
set vcp-dir=D:\TPI\消金\code\cathay\vcp
:: 開始執行
echo Gen Clear And Clone - Start
rmdir /s /q %vcp-dir%
mkdir %vcp-dir%
cd %vcp-dir%
git clone https://heisenberg.chen:yWyMQJ8Wi4RW_AD5dbE8@gitlab.vn-loancloud-dev.com/ovs-lv-vcp-01/data-centralized.git
git clone https://heisenberg.chen:yWyMQJ8Wi4RW_AD5dbE8@gitlab.vn-loancloud-dev.com/ovs-lv-vcp-01/msg-center.git
git clone https://heisenberg.chen:yWyMQJ8Wi4RW_AD5dbE8@gitlab.vn-loancloud-dev.com/ovs-lv-vcp-01/esign-bl.git
git clone https://heisenberg.chen:yWyMQJ8Wi4RW_AD5dbE8@gitlab.vn-loancloud-dev.com/ovs-lv-vcp-01/payment.git
git clone https://heisenberg.chen:yWyMQJ8Wi4RW_AD5dbE8@gitlab.vn-loancloud-dev.com/ovs-lv-vcp-01/payment-momo-bff.git
git clone https://heisenberg.chen:yWyMQJ8Wi4RW_AD5dbE8@gitlab.vn-loancloud-dev.com/ovs-lv-vcp-01/payment-momo-bl.git
git clone https://heisenberg.chen:yWyMQJ8Wi4RW_AD5dbE8@gitlab.vn-loancloud-dev.com/ovs-lv-vcp-01/payment-napas-bff.git
git clone https://heisenberg.chen:yWyMQJ8Wi4RW_AD5dbE8@gitlab.vn-loancloud-dev.com/ovs-lv-vcp-01/payment-napas-bl.git
git clone https://heisenberg.chen:yWyMQJ8Wi4RW_AD5dbE8@gitlab.vn-loancloud-dev.com/ovs-lv-vcp-01/virtual-account-service.git
git clone https://heisenberg.chen:yWyMQJ8Wi4RW_AD5dbE8@gitlab.vn-loancloud-dev.com/ovs-lv-vcp-01/itext.git
git clone https://heisenberg.chen:yWyMQJ8Wi4RW_AD5dbE8@gitlab.vn-loancloud-dev.com/ovs-lv-vcp-01/middle-bo-bff.git
git clone https://heisenberg.chen:yWyMQJ8Wi4RW_AD5dbE8@gitlab.vn-loancloud-dev.com/ovs-lv-vcp-01/middle-bo-cl.git
git clone https://heisenberg.chen:yWyMQJ8Wi4RW_AD5dbE8@gitlab.vn-loancloud-dev.com/ovs-lv-vcp-01/middle-bo-web.git
git clone https://heisenberg.chen:yWyMQJ8Wi4RW_AD5dbE8@gitlab.vn-loancloud-dev.com/ovs-lv-vcp-01/cdw-batch-java.git
git clone https://heisenberg.chen:yWyMQJ8Wi4RW_AD5dbE8@gitlab.vn-loancloud-dev.com/ovs-lv-vcp-01/housekeeping-batch.git
git clone https://heisenberg.chen:yWyMQJ8Wi4RW_AD5dbE8@gitlab.vn-loancloud-dev.com/ovs-lv-vcp-01/file-batch.git

:: 執行完成
echo Gen Clear And Clone - End

pause