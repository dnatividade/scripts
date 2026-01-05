#######################################################################################
#	tamanho-pasta v.:0.1
#
# 	Comment:	Script para obter o tamanho das subpastas de um dado diretório
#	Date:		2023/06/22
#
#	Author:		@dnat
#	Contact:	CONNECTIVA REDES DE COMPUTADORES LTDA
#				+55-035-3822-4271 / 99169-1920
#				suporte@connectivaredes.com
#######################################################################################


# Cole aqui em baixo o diretorio que quer monitorar (termine o diretorio ou unidade com uma \ e coloque tudo entre aspas duplas " "
$DIRETORIO = "C:\"

# Arquivo de saída para importar e ordenar em uma planílha de cálculo
$LOG= ".\output.csv"

$folderList = @()

Get-ChildItem -Path $DIRETORIO -Directory | ForEach-Object {
    $folderPath = $_.FullName

    try {
        $folderSize = Get-ChildItem -Path $folderPath -Recurse -ErrorAction Stop | Measure-Object -Property Length -Sum

        $folderName = $_.Name
        $totalSize = $folderSize.Sum / 1GB

        $out = New-Object PSObject
        $out | Add-Member -MemberType NoteProperty -Name "caminho" -Value $folderPath
        $out | Add-Member -MemberType NoteProperty -Name "tamanho" -Value $totalSize
		Write-Host "$folderName - $totalSize GB"

        $folderList += $out
    }
    catch {
        $errorMessage = $_.Exception.Message
        Write-Host "Erro ao acessar a pasta $folderPath"
		Write-Host "$errorMessage"
    }
}

### Save csv log on disk - delimiter: | (pipe) ###
$folderList | Export-Csv -Path "$LOG" -Delimiter '|' -NoTypeInformation
