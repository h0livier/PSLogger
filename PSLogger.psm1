class PSLogger{

    [string] $outputFile 

    PSLogger(){
        $this.outputFile = 'PSLog.txt'
    }

    PSLogger([string] $pathFile){
        $this.outputFile = $pathFile
    }

    [void] log([string] $content){
        Add-Content -Path $this.outputFile -Value $content
    }

    [void] setOutputFile([string] $pathFile){
        $this.outputFile = $pathFile
    }

}

<#
    .Description
    The New-PSLogger returns a PSLogger Object.
    .PARAMETER outputFile
    Specifies the output file name.
    The containing folder should be created before executing the log function.
#>
function New-PSLogger {
    param ([string] $outputFile = '')
    if($outputFile -eq ''){
        return [PSLogger]::new()
    }
    return [PSLogger]::new($outputFile)
}

Export-ModuleMember -Function New-PSLogger