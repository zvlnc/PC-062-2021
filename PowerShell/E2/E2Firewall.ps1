#Juan Angel Facundo Lopez


Function showmenu 
{
    Clear-Host
   Module Modulo062s.psm1
    Write-Host "Menu"
    Write-Host "1.Ver-StatusPerfil "
     Write-Host "2.Cambiar-StatusPerfil "
      Write-Host "3.Ver-PerfilRedActual "
       Write-Host "4.Cambiar-PerfilRedActual "
        Write-Host "5.Ver-ReglasBloqueo "
         Write-Host "6.Agregar-ReglasBloqueo "
          Write-Host "7.Eliminar-ReglasBloqueo "
           Write-Host "8. Salir"
}
 
showmenu
 
while(($inp = Read-Host -Prompt "Selecciona un numero") -ne "8")
{
 
switch($inp){
        1 {
            Clear-Host
            Ver-StatusPerfil; 
            pause;
            break
          }
        2 {
            Clear-Host
            Cambiar-StatusPefil; 
            pause;
            break
          }
        3 {
            Clear-Host
            Ver-PerfilRedActual; 
            pause;
            break
            
          }
        4 {
            Clear-Host
            Ver-ReglasBloqueo; 
            pause;
            break
          }
        5 {
            Clear-Host
            Ver-ReglasBloqueo; 
            pause;
            break
          }
        6 {
            Clear-Host
            Agregar-ReglasBloqueo; 
            pause;
            break
          }
        7 {
            Clear-Host
            Eliminar-ReglasBloqueo; 
            pause;
            break
          }
      
       8{"Exit"; break}
        default {Read-Host "opcion invalida, selecciona otra opcion";pause}
        
          }
 
showmenu
}

        
        
