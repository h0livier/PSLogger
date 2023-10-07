# PSLogger

PSLogger is a simple project that provides a logging class to your powershell project.


## Usage

```powershell
Import-Module -Name PSLogger.psm1

$logger = New-PSLogger
$logger.log('Message logged')
```

## License

[MIT](https://choosealicense.com/licenses/mit/)