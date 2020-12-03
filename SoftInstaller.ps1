$OutputEncoding = New-Object -typename System.Text.UTF8Encoding
Write-Host "�������� ���������� �� Choco..." -ForegroundColor Yellow
try {
    choco version
    Clear-Host
}
catch {
#    Write-Host "Choco �� ����������"
#    Return
    Write-Host "������ ��������� Choco, ��������� ���������." -ForegroundColor Green

    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}
# �������� ����
function Show-Menu
{
    param (
           [string]$Title = "��������� ��������"
    )
    Clear-Host
    Write-Host "================ $Title ================" -ForegroundColor Green
    
    Write-Host "1: ��������"
    Write-Host "2: ����������"
    Write-Host "3: ������� ���������"
    Write-Host "4: �����������"
    Write-Host "5: �������, �����"
    Write-Host "Q: �����"
    Write-Host "====================================================" -ForegroundColor Green
    Write-Host ""
}

# ���� ��������� ���������
function Show-BrowserMenu
{
    param ([string]$Title = "��������")
    Clear-Host
    Write-Host "================ $Title ================"
    
    Write-Host "1: Mozilla Firefox"
    Write-Host "2: Google Chrome"
    Write-Host "3: Opera"
    Write-Host "Q: �����."
    Write-Host ""
}

# ���� ��������� �����������
function Show-ArchMenu
{
    param ([string]$Title = "����������")
    Clear-Host
    Write-Host "================ $Title ================"
    
    Write-Host "1: 7-Zip"
    Write-Host "2: WinRAR"
    Write-Host "Q: �����."
    Write-Host ""
}

# ���� ��������� ������� ��������
function Show-OfficeMenu
{
    param ([string]$Title = "������� ���������")
    Clear-Host
    Write-Host "================ $Title ================"
    
    Write-Host "1: Acrobat Reader DC"
    Write-Host "2: PDF24"
    Write-Host "3: WPS Office"
    Write-Host "4: OpenOffice"
    Write-Host "5: WinDjView"
    Write-Host "6: Akelpad"
    Write-Host "Q: �����."
    Write-Host ""
}

# ���� ��������� ����������� ��������
function Show-MediaMenu
{
    param ([string]$Title = "�����������")
    Clear-Host
    Write-Host "================ $Title ================"
    
    Write-Host "1: VLC"
    Write-Host "2: AIMP"
    Write-Host "3: FastStone Viewer"
    Write-Host "4: IrfanView"
    Write-Host "Q: �����."
    Write-Host ""
}

# ���� ��������� �������\����� ��������
function Show-MessageMenu
{
    param ([string]$Title = "�������\�����")
    Clear-Host
    Write-Host "================ $Title ================"
    
    Write-Host "1: Mozilla Thunderbird"
    Write-Host "2: Viber"
    Write-Host "3: Telegram"
    Write-Host "4: WhatsApp"
    Write-Host "5: Skype"
    Write-Host "Q: �����."
    Write-Host ""
}

do
{
     Show-Menu
     $inpt = Read-Host "������� #"
     switch ($inpt)
     {
         # ��������
            '1' {
                Clear-Host
                    do {
                        Show-BrowserMenu
                        $br_inpt = Read-Host "������� ������� #"
                        switch ($br_inpt){
                            '1' {
                                Clear-Host
                                "��������� Mozilla Firefox"
                                choco install firefox -y
                                Read-Host "��������� ���������. ������� ����� ������� ��� �����������..." 
                            }
                            '2' {
                                Clear-Host
                                "��������� Google Chrome"
                                choco install googlechrome -y
                                Read-Host "��������� ���������. ������� ����� ������� ��� �����������..." 
                            }
                            '3' {
                                Clear-Host
                                "��������� Opera"
                                choco install opera -y
                                Read-Host "��������� ���������. ������� ����� ������� ��� �����������..." 
                            }
                          
                        }
                        #pause 
                    } until ($br_inpt -eq 'q')

           }
           # ������
            '2' {
            Clear-Host
            do {
                Show-ArchMenu
                $ar_inpt = Read-Host "������� ��������� #"
                switch ($ar_inpt){
                    '1' {
                        Clear-Host
                        "��������� 7-Zip"
                        choco install 7zip -y
                        Write-Host "��������� ���������. ������� ����� ������� ��� �����������..." -ForegroundColor Green
                        pause
                    }
                    '2' {
                        Clear-Host
                        "��������� WinRAR"
                        choco install winrar -y
                        Write-Host "��������� ���������. ������� ����� ������� ��� �����������..." -ForegroundColor Green
                        pause
                    }
                }
                #pause 
            } until ($ar_inpt -eq 'q')
           }
           # ������� ���������
            '3' {
            Clear-Host
            do {
                Show-OfficeMenu
                $off_inpt = Read-Host "������� ������� ��������� #"
                switch ($off_inpt){
                    '1' {
                        Clear-Host
                        "Acrobat Reader DC"
                        choco install adobereader -y
                        Write-Host "��������� ���������. ������� ����� ������� ��� �����������..." -ForegroundColor Green
                        pause
                    }
                    '2' {
                        Clear-Host
                        "PDF24"
                        choco install pdf24 -y
                        Write-Host "��������� ���������. ������� ����� ������� ��� �����������..." -ForegroundColor Green
                        pause
                    }
                    '3' {
                        Clear-Host
                        "WPS Office"
                        choco install wps-office-free -y
                        Write-Host "��������� ���������. ������� ����� ������� ��� �����������..." -ForegroundColor Green
                        pause
                    }
                    '4' {
                        Clear-Host
                        "OpenOffice"
                        choco install openoffice -y
                        Write-Host "��������� ���������. ������� ����� ������� ��� �����������..." -ForegroundColor Green
                        pause
                    }
                    '5' {
                        Clear-Host
                        "WinDjView"
                        choco install windjview -y
                        Write-Host "��������� ���������. ������� ����� ������� ��� �����������..." -ForegroundColor Green
                        pause
                    }
                    '6' {
                        Clear-Host
                        "Akelpad"
                        choco install akelpad -y
                        Write-Host "��������� ���������. ������� ����� ������� ��� �����������..." -ForegroundColor Green
                        pause
                    }
                }
                #pause 
            } until ($off_inpt -eq 'q')
           } 
           # �����������
            '4'{
                Clear-Host
                do {
                    Show-MediaMenu
                    $mm_inpt = Read-Host "������� ����������� #"
                    switch ($mm_inpt){
                        '1' {
                            Clear-Host
                            "VLC"
                            choco install vlc -y
                            Write-Host "��������� ���������. ������� ����� ������� ��� �����������..." -ForegroundColor Green
                            pause
                        }
                        '2' {
                            Clear-Host
                            "AIMP"
                            choco install aimp -y
                            Write-Host "��������� ���������. ������� ����� ������� ��� �����������..." -ForegroundColor Green
                            pause
                        }
                        '3' {
                            Clear-Host
                            "FastStone Image Viewer"
                            choco install fsviewer -y
                            Write-Host "��������� ���������. ������� ����� ������� ��� �����������..." -ForegroundColor Green
                            pause
                        }
                        '4' {
                            Clear-Host
                            "IrfanView"
                            choco install irfanview -y
                            Write-Host "��������� ���������. ������� ����� ������� ��� �����������..." -ForegroundColor Green
                            pause
                        }
                        }
                        #pause 
                    } until ($mm_inpt -eq 'q')

                }
            # �������\�����
            '5'{
                Clear-Host
                do {
                    Show-MessageMenu
                    $mes_inpt = Read-Host "������� ��������� ������� #"
                    switch ($mes_inpt){
                        '1' {
                            Clear-Host
                            "Mozilla Thunderbird"
                            choco install thunderbird -y
                            Write-Host "��������� ���������. ������� ����� ������� ��� �����������..." -ForegroundColor Green
                            pause
                        }
                        '2' {
                            Clear-Host
                            "Viber"
                            choco install viber -y
                            Write-Host "��������� ���������. ������� ����� ������� ��� �����������..." -ForegroundColor Green
                            pause
                        }
                        '3' {
                            Clear-Host
                            "Telegram"
                            choco install telegram -y
                            Write-Host "��������� ���������. ������� ����� ������� ��� �����������..." -ForegroundColor Green
                            pause
                        }
                        '4' {
                            Clear-Host
                            "WhatsApp"
                            choco install whatsapp -y
                            Write-Host "��������� ���������. ������� ����� ������� ��� �����������..." -ForegroundColor Green
                            pause
                        }
                        '5' {
                            Clear-Host
                            "Skype"
                            choco install skype -y
                            Write-Host "��������� ���������. ������� ����� ������� ��� �����������..." -ForegroundColor Green
                            pause
                        }
                        }
                        #pause 
                    } until ($mes_inpt -eq 'q')
                }
                'q' {
                return
           }
     }
     #pause
}
until ($inpt -eq 'q')
