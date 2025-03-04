#include <mysql.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
int main(int argc, char *argv)
{
    MYSQLconn;
    int err;
        MYSQL_RES *resultado;
    MYSQL_ROW row;
    int ID_crup;
    float engano;
    float trampa;
    conn = mysql_init(NULL);
    if (conn==NULL) {

        printf ("Error al crear la conexion: %u %s\n",
                mysql_errno(conn), mysql_error(conn));
        exit (1);
    }
    conn = mysql_real_connect (conn, "localhost","user", "pass", "crupier",0, NULL, 0);
    if (conn==NULL) {
        printf ("Error al inicializar la conexion: %u %s\n",
                mysql_errno(conn), mysql_error(conn));
        exit (1);
    }
    printf("Dame ID_crup%d\n");
    scanf("%d\n",ID_crup);

    char consulta [80];
    strcpy (consulta,"SELECT actcrup.ID_crup FROM crupier, Ranking WHERE actcrup.ID_crup, trampa WHERE actcrup.ID_crup = 'ID_crup'");
    strcat (consulta, ID_crup);
    err=mysql_query (conn, consulta);
    if (err!=0) {
        printf ("Error al consultar datos de la base %u %s\n",
                mysql_errno(conn), mysql_error(conn));
        exit (1);
    }
    resultado = mysql_store_result (conn);
    row = mysql_fetch_row (resultado);
    int contador = 0;
    if (row == NULL)
        printf ("No se han obtenido datos en la consulta\n");
    else
        while (row !=NULL) {
            contador++;
            return contador;
    }
        printf("ID_crup%d\n tiene el nivel de engano en un %.2f\n", ID_crup, contador);
        mysql_close (conn);
        exit(0);
}