@echo off

:: �]�w��Ƨ�
set vmb-dir=D:\TPI\����\code\cathay\vmb
:: �}�l����
echo Gen Clear And Clone - Start
rmdir /s /q %vmb-dir%
mkdir %vmb-dir%
cd %vmb-dir%
git clone https://heisenberg.chen:yWyMQJ8Wi4RW_AD5dbE8@gitlab.vn-loancloud-dev.com/OVS-LX-VMB-01/app-bff.git
git clone https://heisenberg.chen:yWyMQJ8Wi4RW_AD5dbE8@gitlab.vn-loancloud-dev.com/OVS-LX-VMB-01/channel-bo-bff.git
git clone https://heisenberg.chen:yWyMQJ8Wi4RW_AD5dbE8@gitlab.vn-loancloud-dev.com/OVS-LX-VMB-01/channel-bo-cl.git
git clone https://heisenberg.chen:yWyMQJ8Wi4RW_AD5dbE8@gitlab.vn-loancloud-dev.com/OVS-LX-VMB-01/channel-notification-bl.git
git clone https://heisenberg.chen:yWyMQJ8Wi4RW_AD5dbE8@gitlab.vn-loancloud-dev.com/OVS-LX-VMB-01/channel-web.git
git clone https://heisenberg.chen:yWyMQJ8Wi4RW_AD5dbE8@gitlab.vn-loancloud-dev.com/OVS-LX-VMB-01/member-cl.git
git clone https://heisenberg.chen:yWyMQJ8Wi4RW_AD5dbE8@gitlab.vn-loancloud-dev.com/OVS-LX-VMB-01/scheduler.git

:: ���槹��
echo Gen Clear And Clone - End

pause