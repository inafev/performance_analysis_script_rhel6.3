# Performance analysis script Red Hat Enterprise Linux 6.3 (2012)
Performance Analysis script for RHEL6.3. htop, iotop, tiobench &amp; sar

Ejecutar este script con usuario no root durante las pruebas de carga, ó cuando se produce un problema de sobrecarga y queremos recoger datos de análisis de rendimiento. 

En este último caso el procedimiento sería (debemos tener el script preparado para ejecutar en cada sistema):

1. Se produce sobrecarga en un servidor Linux, varios procesos Apache/Tomcat/Jboss/Oracle/Mysql consumen mucho CPU/Memoria, etc.
2. Con usuario no root, ejecutamos el script durante unos minutos
3. Reiniciamos Apache/Tomcat/Jboss/Oracle/Mysql para solucionar rápidamente nuestro problema de rendimiento
4. Paramos el script. Ahora tenemos todos los datos necesarios en un fichero para diagnosticar nuestro problema.

NOTA: Este script es válido en RHEL6.3, pero requiere algunas modificaciones para ser ejecutado en RHEL5.x (algunos parámetros CLI se han incorporado en RHEL6)
NOTA2: HTOP, a diferencia del tradicional top, no puede ser ejecutado via CLI (p.e. en un script), pero siempre nos puede servir ejecutar en otra sesión HTOP (ofrece muchas ventajas complementarias sobre top)
NOTA3: la herramienta de análisis de rendimiento tiobench, al igual que htop, puede ser interesante instalarlo desde el repositorio EPEL. tiobench se podría incluír en este script.

Run this script as no root user during the load tests or when an overload/performance issue arises and we need to collect data for later analysis. In the second scenario this procedure could be accomplished:

1. A performance/overload issue arises with high CPU/Memory load by Apache/Tomcat/Jboss/Oracle/Mysql processes.
2. The below script is run as no root for a while.
3. Apache/Tomcat/Jboss/Oracle/Mysql is restarted as a workaround of the performance issue.
4. The below script is stopped (CTRL-C). We now have collected data in a file for troubleshooting the performance issue.

NOTE: This script is only valid in RHEL6.3 as some CLI options are not RHEL5.x compliant.
NOTE2: HTOP, unlike top command, cannot be run via CLI (i.e. inside our script), but it's always handy and nice-to-have (more usable than top command and with more features).
NOTE3: tiobench performance analysis tool can be very helpful, and likewise htop, it can be installed from EPEL repositories. tiobench could be added to this script.
NOTE3: iotop. RHEL 5.8 now includes iotop. It can be added to this script
