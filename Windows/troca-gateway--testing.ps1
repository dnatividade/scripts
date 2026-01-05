@echo off
cls
echo ####################################################################################
echo Script para alternar entre atways em caso de fala de conexao -- EM DESENVOLVIMENTO
echo CONNECTIVA REDES DE COMPUTADORES
echo (35)3822-4271
echo "@dnat"
echo ####################################################################################

<#
Este script em PowerShell monitora a conectividade de rede ao site especificado em $SiteTest (no caso, www.google.com). Se não houver resposta (o site não responde ao ping), o script alterna o gateway padrão da interface de rede entre os endereços definidos no array $arrGateways. Aqui está um resumo do que o script faz:

Explicação do Funcionamento:
    Array de Gateways ($arrGateways):
    Define dois gateways padrão possíveis para troca: 192.168.0.1 e 192.168.0.2.

    Site de teste ($SiteTest):
    Define um site que deve responder ao comando ping. Neste caso, www.google.com é usado como teste.

    Inicialização do índice do gateway ($indexGateway):
    Controla qual gateway está atualmente configurado. Começa com 0 (primeiro gateway do array).

    Loop infinito (Do ... While (1 -eq 1)):
    Mantém o script em execução continuamente.

    Verificação de conectividade:
    Usa Test-Connection para verificar se o site configurado ($SiteTest) responde ao ping. Se o site não responde:
        Exibe uma mensagem informando que a conectividade foi perdida e que o gateway será trocado.
        Altera o gateway padrão de todas as interfaces de rede ativas.

    Troca do gateway padrão:
        Utiliza Get-WmiObject para obter todas as interfaces de rede ativas (IPEnabled=TRUE).
        Altera o gateway padrão da interface para o próximo gateway no array $arrGateways.
        Ajusta o índice ($indexGateway) para alternar para o próximo gateway na próxima falha.

    Pausa no loop (Start-Sleep -s 60):
    Aguarda 60 segundos antes de verificar novamente.

Fluxo de Operação:
    O script tenta pingar www.google.com.
    Se o site não responde:
        O gateway padrão é trocado entre os gateways definidos no array.
        Exibe mensagens no console indicando a troca.
    Continua testando periodicamente a conectividade a cada 60 segundos.

Uso prático:
    Cenário típico:
    Este script pode ser usado para redes com múltiplos gateways ou rotas redundantes. Se o gateway atual não conseguir acessar a internet, ele troca para outro automaticamente.

Melhorias sugeridas:

    Validação adicional:
    Verificar se o novo gateway realmente resolve o problema antes de alternar novamente.

    Logging:
    Registrar as mudanças de gateway em um arquivo para fins de auditoria.

    Melhor controle do loop:
    Substituir While (1 -eq 1) por um mecanismo de saída mais flexível, como uma tecla de interrupção.

    Compatibilidade com IPv6:
    Adicionar suporte para gateways IPv6, caso necessário.
#>


$arrGateways=@("192.168.0.1","192.168.0.2")
#Configure um site que responda ao ping
$SiteTest="www.google.com"

$indexGateway=0

DO{
    Start-Sleep -s 60
    if (-not (Test-Connection -ComputerName $SiteTest -ea SilentlyContinue)){
        #Se não pingar troca defaultGateway
        write-host "não pingou troca para "+$arrGateways[$indexGateway]
        #Pega todas NICS via WMI
        $NICs = Get-WmiObject -Class Win32_NetworkAdapterConfiguration -Filter IPEnabled=TRUE
        #Troca do Default Gateway de todas as NICS
        foreach($NIC in $NICs) {
            $Gateway = $arrGateways[$indexGateway]
            $NIC.SetGateways($Gateway)
        }
        
        #Deixa "engatilhado" o próximo gateway
        if ($arrGateways.getupperbound(0) -eq $indexGateway){
            $indexGateway=0
        }else{
            $indexGateway+=1
        }
        write-host  $arrGateways[$indexGateway]
    }
}
While (1 -eq 1)
