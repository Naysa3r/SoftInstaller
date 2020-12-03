$OutputEncoding = New-Object -typename System.Text.UTF8Encoding
Write-Host "Проверка установлен ли Choco..." -ForegroundColor Yellow
try {
    choco version
    Clear-Host
}
catch {
#    Write-Host "Choco не установлен"
#    Return
    Write-Host "Начата установка Choco, дождитесь окончания." -ForegroundColor Green

    Set-ExecutionPolicy Bypass -Scope Process -Force
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}
# Основное Меню
function Show-Menu
{
    param (
           [string]$Title = "Установка программ"
    )
    Clear-Host
    Write-Host "================ $Title ================" -ForegroundColor Green
    
    Write-Host "1: Браузеры"
    Write-Host "2: Архиваторы"
    Write-Host "3: Офисные программы"
    Write-Host "4: Мультимедиа"
    Write-Host "5: Общение, Почта"
    Write-Host "Q: Выход"
    Write-Host "====================================================" -ForegroundColor Green
    Write-Host ""
}

# Меню установки Браузеров
function Show-BrowserMenu
{
    param ([string]$Title = "Браузеры")
    Clear-Host
    Write-Host "================ $Title ================"
    
    Write-Host "1: Mozilla Firefox"
    Write-Host "2: Google Chrome"
    Write-Host "3: Opera"
    Write-Host "Q: Назад."
    Write-Host ""
}

# Меню установки Архиваторов
function Show-ArchMenu
{
    param ([string]$Title = "Архиваторы")
    Clear-Host
    Write-Host "================ $Title ================"
    
    Write-Host "1: 7-Zip"
    Write-Host "2: WinRAR"
    Write-Host "Q: Назад."
    Write-Host ""
}

# Меню установки Офисных программ
function Show-OfficeMenu
{
    param ([string]$Title = "Офисные программы")
    Clear-Host
    Write-Host "================ $Title ================"
    
    Write-Host "1: Acrobat Reader DC"
    Write-Host "2: PDF24"
    Write-Host "3: WPS Office"
    Write-Host "4: OpenOffice"
    Write-Host "5: WinDjView"
    Write-Host "6: Akelpad"
    Write-Host "Q: Назад."
    Write-Host ""
}

# Меню установки Мультимедиа программ
function Show-MediaMenu
{
    param ([string]$Title = "Мультимедиа")
    Clear-Host
    Write-Host "================ $Title ================"
    
    Write-Host "1: VLC"
    Write-Host "2: AIMP"
    Write-Host "3: FastStone Viewer"
    Write-Host "4: IrfanView"
    Write-Host "Q: Назад."
    Write-Host ""
}

# Меню установки Общение\Почта программ
function Show-MessageMenu
{
    param ([string]$Title = "Общение\Почта")
    Clear-Host
    Write-Host "================ $Title ================"
    
    Write-Host "1: Mozilla Thunderbird"
    Write-Host "2: Viber"
    Write-Host "3: Telegram"
    Write-Host "4: WhatsApp"
    Write-Host "5: Skype"
    Write-Host "Q: Назад."
    Write-Host ""
}

do
{
     Show-Menu
     $inpt = Read-Host "Выбрать #"
     switch ($inpt)
     {
         # БРАУЗЕРЫ
            '1' {
                Clear-Host
                    do {
                        Show-BrowserMenu
                        $br_inpt = Read-Host "Выбрать Браузер #"
                        switch ($br_inpt){
                            '1' {
                                Clear-Host
                                "Установка Mozilla Firefox"
                                choco install firefox -y
                                Read-Host "Установка завершена. Нажмите любую клавишу для продолжения..." 
                            }
                            '2' {
                                Clear-Host
                                "Установка Google Chrome"
                                choco install googlechrome -y
                                Read-Host "Установка завершена. Нажмите любую клавишу для продолжения..." 
                            }
                            '3' {
                                Clear-Host
                                "Установка Opera"
                                choco install opera -y
                                Read-Host "Установка завершена. Нажмите любую клавишу для продолжения..." 
                            }
                          
                        }
                        #pause 
                    } until ($br_inpt -eq 'q')

           }
           # АРХИВЫ
            '2' {
            Clear-Host
            do {
                Show-ArchMenu
                $ar_inpt = Read-Host "Выбрать Архиватор #"
                switch ($ar_inpt){
                    '1' {
                        Clear-Host
                        "Установка 7-Zip"
                        choco install 7zip -y
                        Write-Host "Установка завершена. Нажмите любую клавишу для продолжения..." -ForegroundColor Green
                        pause
                    }
                    '2' {
                        Clear-Host
                        "Установка WinRAR"
                        choco install winrar -y
                        Write-Host "Установка завершена. Нажмите любую клавишу для продолжения..." -ForegroundColor Green
                        pause
                    }
                }
                #pause 
            } until ($ar_inpt -eq 'q')
           }
           # ОФИСНЫЕ ПРОГРАММЫ
            '3' {
            Clear-Host
            do {
                Show-OfficeMenu
                $off_inpt = Read-Host "Выбрать Офисную программу #"
                switch ($off_inpt){
                    '1' {
                        Clear-Host
                        "Acrobat Reader DC"
                        choco install adobereader -y
                        Write-Host "Установка завершена. Нажмите любую клавишу для продолжения..." -ForegroundColor Green
                        pause
                    }
                    '2' {
                        Clear-Host
                        "PDF24"
                        choco install pdf24 -y
                        Write-Host "Установка завершена. Нажмите любую клавишу для продолжения..." -ForegroundColor Green
                        pause
                    }
                    '3' {
                        Clear-Host
                        "WPS Office"
                        choco install wps-office-free -y
                        Write-Host "Установка завершена. Нажмите любую клавишу для продолжения..." -ForegroundColor Green
                        pause
                    }
                    '4' {
                        Clear-Host
                        "OpenOffice"
                        choco install openoffice -y
                        Write-Host "Установка завершена. Нажмите любую клавишу для продолжения..." -ForegroundColor Green
                        pause
                    }
                    '5' {
                        Clear-Host
                        "WinDjView"
                        choco install windjview -y
                        Write-Host "Установка завершена. Нажмите любую клавишу для продолжения..." -ForegroundColor Green
                        pause
                    }
                    '6' {
                        Clear-Host
                        "Akelpad"
                        choco install akelpad -y
                        Write-Host "Установка завершена. Нажмите любую клавишу для продолжения..." -ForegroundColor Green
                        pause
                    }
                }
                #pause 
            } until ($off_inpt -eq 'q')
           } 
           # МУЛЬТИМЕДИА
            '4'{
                Clear-Host
                do {
                    Show-MediaMenu
                    $mm_inpt = Read-Host "Выбрать Мультимедиа #"
                    switch ($mm_inpt){
                        '1' {
                            Clear-Host
                            "VLC"
                            choco install vlc -y
                            Write-Host "Установка завершена. Нажмите любую клавишу для продолжения..." -ForegroundColor Green
                            pause
                        }
                        '2' {
                            Clear-Host
                            "AIMP"
                            choco install aimp -y
                            Write-Host "Установка завершена. Нажмите любую клавишу для продолжения..." -ForegroundColor Green
                            pause
                        }
                        '3' {
                            Clear-Host
                            "FastStone Image Viewer"
                            choco install fsviewer -y
                            Write-Host "Установка завершена. Нажмите любую клавишу для продолжения..." -ForegroundColor Green
                            pause
                        }
                        '4' {
                            Clear-Host
                            "IrfanView"
                            choco install irfanview -y
                            Write-Host "Установка завершена. Нажмите любую клавишу для продолжения..." -ForegroundColor Green
                            pause
                        }
                        }
                        #pause 
                    } until ($mm_inpt -eq 'q')

                }
            # ОБЩЕНИЕ\ПОЧТА
            '5'{
                Clear-Host
                do {
                    Show-MessageMenu
                    $mes_inpt = Read-Host "Выбрать Программу общения #"
                    switch ($mes_inpt){
                        '1' {
                            Clear-Host
                            "Mozilla Thunderbird"
                            choco install thunderbird -y
                            Write-Host "Установка завершена. Нажмите любую клавишу для продолжения..." -ForegroundColor Green
                            pause
                        }
                        '2' {
                            Clear-Host
                            "Viber"
                            choco install viber -y
                            Write-Host "Установка завершена. Нажмите любую клавишу для продолжения..." -ForegroundColor Green
                            pause
                        }
                        '3' {
                            Clear-Host
                            "Telegram"
                            choco install telegram -y
                            Write-Host "Установка завершена. Нажмите любую клавишу для продолжения..." -ForegroundColor Green
                            pause
                        }
                        '4' {
                            Clear-Host
                            "WhatsApp"
                            choco install whatsapp -y
                            Write-Host "Установка завершена. Нажмите любую клавишу для продолжения..." -ForegroundColor Green
                            pause
                        }
                        '5' {
                            Clear-Host
                            "Skype"
                            choco install skype -y
                            Write-Host "Установка завершена. Нажмите любую клавишу для продолжения..." -ForegroundColor Green
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
