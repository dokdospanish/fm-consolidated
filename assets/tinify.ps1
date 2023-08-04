$scriptName = $MyInvocation.MyCommand.Name


foreach ($file in ls)
{
	if ($scriptName -eq $file.name) { continue }
	
	$newName = $file.basename + '-tiny' + $file.extension;
	
	#Scale to 20px wide, same aspect
	ffmpeg -i $file.fullname -vf scale=20:-1 $newName;
}