[CmdletBinding()]
param ( 
    [String]$classpath,
    [String]$file
)

$dotJava = '.java'
$fileName = $file + $dotJava

javac -d $classpath $fileName 2> $ErrorList
write-output $ErrorList
java -classpath $classpath $file
