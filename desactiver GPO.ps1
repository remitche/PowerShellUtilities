#Supression de la politique "GPO" pour enelever le crap du type, instagram, candycrush etc installé par défault dans Windows

#Test de la présence de l'entrée dans le registre
$path = 'HKLM:\SOFTWARE\Policies\Microsoft\Windows\CloudContent';
$key = "DisableWindowsConsumerFeatures "; #la clé en question
$value = 0; #mettre à zéro pour désactiver

$recherche = Test-Path $Path

if( $recherche)
{
   New-ItemProperty -Path $path -Name $key -Value $value } #on remet ça à zéro
else
{
    echo "Aucune présence de la politique GPO dans le registre :)";
}