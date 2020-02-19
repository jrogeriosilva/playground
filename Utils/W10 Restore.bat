## Escanear, reparar, substituir e restaurar qualquer arquivo de sistema operacional danificado, ausente ou alterado.
  sfc /SCANNOW
## Localiza setores inválidos e recupera informações legíveis.
chkdsk /R
## Caso Ocorra erro no SFC:
  DISM /Online /Cleanup-image /Restorehealth
