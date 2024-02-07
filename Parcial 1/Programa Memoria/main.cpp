#include <iostream>
#include <windows.h>
#include "libgame.h"
#include <string.h>
#include <fstream>

using namespace std;


void decimal_hexadecimal(short decimal,ofstream &archive)	//Funcion convertir numero a decimal
{
     int digitoex[20];
    int residuo, resultado, i = 0;
    
    do
    {
        residuo = decimal % 16;
        resultado = decimal / 16;
        digitoex[i] = residuo;
        decimal = resultado;
        i++;
    } while (resultado > 15);

    digitoex[i] = resultado;

    //cout << "El equivalente en hexadecimal es: ";

    for (int j = i; j >= 0; j--)
    {
        if (digitoex[j] == 10)
        {
            archive << "A";
        }
        else if (digitoex[j] == 11)
        {
            archive << "B";
        }
        else if (digitoex[j] == 12)
        {
            archive << "C";
        }
        else if (digitoex[j] == 13)
        {
            archive << "D";
        }
        else if (digitoex[j] == 14)
        {
            archive << "E";
        }
        else if (digitoex[j] == 15)
        {
            archive << "F";
        }
        else
        {
           archive << digitoex[j];
        }   
    }
}


class Memoria			//Clase o modelo de las Celdas de la memoria
{
  public:

  	char bytes[16][2];
	short suma_fila = 0;
	short residuo;
	short checksum;
  	
  	void llenar_memoria()
  	{
  		Color(PLATA);
		marco_Secundario();
		
	}
  	
  	
}Fila[256];


void portada()
{
	OcultaCursor();
	Color(AZUL);
	marco_Secundario();
	datos();
	
	Beep(300 ,6000);
	
	gotoxy(80,23);
	cout<<"Presiona Enter para Continuar ...";
	pausa();
	system("cls");
}


void ingresar_byte_especifico()				//Funcion ingresar um byte a memoria 
{
	
	short fila,byte;
	char byteF,n1,n2;
	bool condicion;
	
	Color(AMARILLO);
	marco_Secundario();
	gotoxy(30,6);
	cout<<"Que Fila deseas llenar (0 - 255) ----> ";
	cin>>fila;
	
	while(fila < 0 || fila >255)
	{
		Color(ROJO);
		gotoxy(30,7);
		cout<<"Ingresa una Fila correcta !";
		Color(AMARILLO);
		gotoxy(30,6);
		cout<<"                                                       ";
		gotoxy(30,6);
		cout<<"Que Fila deseas llenar (0 - 255) ----> ";
		cin>>fila;
	}
	//system("cls");
	
	Color(VERDE);
	
	gotoxy(30,10);
	cout<<"Que byte deseas llenar (0 - F) ----> ";
	cin>>byteF;
	
	condicion = false;
	
	while( condicion == false )
	{
		switch(byteF)
		{
			case 48 : condicion = true; byte = 0; break;
			case 49 : condicion = true; byte = 1; break;
			case 50 : condicion = true; byte = 2; break;
			case 51 : condicion = true;  byte = 3; break;
			case 52 : condicion = true;  byte = 4 ;break;
			case 53 : condicion = true;  byte = 5 ;break;
			case 54 : condicion = true;  byte = 6;break;
			case 55 : condicion = true;  byte = 7;break;
			case 56 : condicion = true;  byte = 8;break;
			case 57 : condicion = true;  byte = 9;break;
			case 65 : condicion = true; byte = 10;break;
			case 66 : condicion = true; byte = 11;break;
			case 67 : condicion = true; byte = 12;break;
			case 68 : condicion = true; byte = 13;break;
			case 69 : condicion = true; byte = 14;break;
			case 70 : condicion = true; byte = 15;break;
			
			default :
				
				gotoxy(30,11);
				Color(ROJO);
				cout<<"Escribe correctamente el numero o usa letra mayuscula";
		
				Color(VERDE);
				gotoxy(30,10);
				cout<<"                                                              ";
				gotoxy(30,10);
				cout<<"Que byte deseas llenar (0 - F) ----> ";
				cin>>byteF;
			
			 break;
			
			
		}
	}
	

	Color(VERDE);
	
	gotoxy(30,14);
	cout<<"Ingresa el nible mas Significativo (0 - F) ----> ";
	cin>>n1;


	condicion = false;
	
	while(condicion == false )
	{
		switch(n1)
		{
			case 48 : condicion = true; break;
			case 49 : condicion = true;  break;
			case 50 : condicion = true; break;
			case 51 : condicion = true;  break;
			case 52 : condicion = true;   ;break;
			case 53 : condicion = true;  ;break;
			case 54 : condicion = true;  ;break;
			case 55: condicion = true;  ;break;
			case 56: condicion = true;  ;break;
			case 57: condicion = true;  ;break;
			case 65 : condicion = true; ;break;
			case 66 : condicion = true; ;break;
			case 67 : condicion = true; ;break;
			case 68 : condicion = true; ;break;
			case 69 : condicion = true; ;break;
			case 70 : condicion = true; ;break;
			
			default :
				
				gotoxy(30,15);
				Color(ROJO);
				cout<<"Escribe correctamente el numero o usa letra mayuscula";
		
				Color(VERDE);
				gotoxy(30,14);
				cout<<"                                                              ";
				gotoxy(30,14);
				cout<<"Ingresa el nible mas Significativo (0 - F) ----> ";
				cin>>n1;
			
			 break;
		}
	}
	
	Fila[fila].bytes[byte][0] = n1;
	
	Color(VERDE);
	
	gotoxy(30,17);
	cout<<"Ingresa el nible menos Significativo (0 - F) ----> ";
	cin>>n2;
	

	condicion = false;
	
	while( condicion == false )
	{
		switch(n2)
		{
			case 48 : condicion = true; break;
			case 49 : condicion = true;  break;
			case 50 : condicion = true; break;
			case 51 : condicion = true;  break;
			case 52 : condicion = true;   ;break;
			case 53 : condicion = true;  ;break;
			case 54 : condicion = true;  ;break;
			case 55: condicion = true;  ;break;
			case 56: condicion = true;  ;break;
			case 57: condicion = true;  ;break;
			case 65 : condicion = true; ;break;
			case 66 : condicion = true; ;break;
			case 67 : condicion = true; ;break;
			case 68 : condicion = true; ;break;
			case 69 : condicion = true; ;break;
			case 70 : condicion = true; ;break;
			
			default :
				
				gotoxy(30,18);
				Color(ROJO);
				cout<<"Escribe correctamente el numero o usa letra mayuscula";
		
				Color(VERDE);
				gotoxy(30,17);
				cout<<"                                                              ";
				gotoxy(30,17);
				cout<<"Ingresa el nible menos Significativo (0 - F) ----> ";
				cin>>n2;
			
			 break;
		}
	}
	
	Color(VERDE);
	
	Fila[fila].bytes[byte][1] = n2;
	
	gotoxy(30,20);
	cout<<"Guardado en Fila : "<<fila;
	gotoxy(30,21);
	cout<<"En el byte : "<<byteF<<" ( "<<byte<<" )";
	gotoxy(30,22);
	cout<<"Contenido--> |"<<Fila[fila].bytes[byte][0]<<Fila[fila].bytes[byte][1]<<"|";
	
	gotoxy(0,2);
	
	for(short i = 0 ; i<16 ; i++)
	{
		for(short j = 0 ; j < 2 ; j++)
		{
			cout<<""<<Fila[fila].bytes[i][j];
		}
	}
}

void ingresar_fila_completa()			//Funcion ingresa los 16 bytes de una fila especifica
{
	short fila,byte;
	char byteF,n1,n2;
	bool condicion;
	
	Color(AZUL);
	marco_Secundario();
	gotoxy(30,8);
	cout<<"Que Fila deseas llenar (0 - 255) ----> ";
	cin>>fila;
	
	while(fila < 0 || fila >255)
	{
		Color(ROJO);
		gotoxy(30,9);
		cout<<"Ingresa una Fila correcta !";
		Color(AZUL);
		gotoxy(30,8);
		cout<<"                                                       ";
		gotoxy(30,8);
		cout<<"Que Fila deseas llenar (0 - 255) ----> ";
		cin>>fila;
	}
	system("cls");
	
	for(short i = 0 ; i<16 ; i++)
	{
			system("cls");
			Color(AZUL);
			gotoxy(30,8);
			cout<<"Llenando Fila : "<<fila;
			
			gotoxy(30,10);
			
			switch(byte)
			{
				case 10 : cout<<"byte : A"; ;break;
				case 11 : cout<<"byte : B"; ;break;
				case 12 : cout<<"byte : C"; ;break;
				case 13 : cout<<"byte : D"; ;break;
				case 14 : cout<<"byte : E"; ;break;
				case 15 : cout<<"byte : F"; ;break;
				
				default : cout<<"byte :"<<i; break;
			}
			
			
			Color(VERDE);
	
			gotoxy(30,14);
			cout<<"Ingresa el nible mas Significativo (0 - F) ----> ";
			cin>>n1;


			condicion = false;
	
			while(condicion == false )
			{
				switch(n1)
				{
					case 48 : condicion = true; break;
					case 49 : condicion = true;  break;
					case 50 : condicion = true; break;
					case 51 : condicion = true;  break;
					case 52 : condicion = true;   ;break;
					case 53 : condicion = true;  ;break;
					case 54 : condicion = true;  ;break;
					case 55: condicion = true;  ;break;
					case 56: condicion = true;  ;break;
					case 57: condicion = true;  ;break;
					case 65 : condicion = true; ;break;
					case 66 : condicion = true; ;break;
					case 67 : condicion = true; ;break;
					case 68 : condicion = true; ;break;
					case 69 : condicion = true; ;break;
					case 70 : condicion = true; ;break;
			
				default :
				
					gotoxy(30,15);
					Color(ROJO);
					cout<<"Escribe correctamente el numero o usa letra mayuscula";
		
					Color(VERDE);
					gotoxy(30,14);
					cout<<"                                                              ";
					gotoxy(30,14);
					cout<<"Ingresa el nible mas Significativo (0 - F) ----> ";
					cin>>n1;
			
				 break;
				}
			}
	
			Fila[fila].bytes[i][0] = n1;
	
			Color(VERDE);
	
			gotoxy(30,17);
			cout<<"Ingresa el nible menos Significativo (0 - F) ----> ";
			cin>>n2;
	

			condicion = false;
	
			while( condicion == false )
			{
				switch(n2)
				{
					case 48 : condicion = true; break;
					case 49 : condicion = true;  break;
					case 50 : condicion = true; break;
					case 51 : condicion = true;  break;
					case 52 : condicion = true;   ;break;
					case 53 : condicion = true;  ;break;
					case 54 : condicion = true;  ;break;
					case 55: condicion = true;  ;break;
					case 56: condicion = true;  ;break;
					case 57: condicion = true;  ;break;
					case 65 : condicion = true; ;break;
					case 66 : condicion = true; ;break;
					case 67 : condicion = true; ;break;
					case 68 : condicion = true; ;break;
					case 69 : condicion = true; ;break;
					case 70 : condicion = true; ;break;
			
					default :
				
						gotoxy(30,18);
						Color(ROJO);
						cout<<"Escribe correctamente el numero o usa letra mayuscula";
		
						Color(VERDE);
						gotoxy(30,17);
						cout<<"                                                              ";
						gotoxy(30,17);
						cout<<"Ingresa el nible menos Significativo (0 - F) ----> ";
						cin>>n2;
			
					 break;
				}
			}
			
			Color(VERDE);
	
			Fila[fila].bytes[i][1] = n2;
	
	}

	
	gotoxy(0,2);
	
	for(short i = 0 ; i<16 ; i++)
	{
		for(short j = 0 ; j < 2 ; j++)
		{
			cout<<""<<Fila[fila].bytes[i][j];
		}
	}
}

void inicializar_memoria_en_cero()			//Funcion iniciar el contenido de la memoria en ceros
{
	for(short i = 0 ; i<256 ; i++)
	{	
		//cout<<i<<"- ";
		for(short j = 0 ; j<16 ; j++)
		{	
			for(short k = 0 ; k < 2 ; k++)
			{
				Fila[i].bytes[j][k] = 48;
				//cout<<Fila[i].bytes[j][k];
			}
		}
		//cout<<"\n";
	}
}


void crear_archivo()			//Funcion que crea el archivo y escribe lo su contenido
{
	short byte_suma = 0;
	short valor_direccion = 16;
	
	ofstream archivo;
	
	archivo.open("Archivo.hex",ios::out);
	
	if(archivo.fail())
	{
		cout<<"no se pudo abrir";
		exit(1);
	}
	
	archivo<<"020000040000FA\n\n";
	
	for(short i = 0 ; i<256 ; i++)
	{
		archivo<<"100";
		decimal_hexadecimal(i, archivo);
		archivo<<"000";
		
		for(short j = 0 ; j<16 ; j++)
		{	
			for(short k = 0 ; k < 2 ; k++)
			{
				
				switch(Fila[i].bytes[j][k])
				{
					case 48 : Fila[i].suma_fila = Fila[i].suma_fila + 0 ; break;
					case 49 : Fila[i].suma_fila = Fila[i].suma_fila + 1 ; break;
					case 50 : Fila[i].suma_fila = Fila[i].suma_fila + 2 ; break;
					case 51 : Fila[i].suma_fila = Fila[i].suma_fila + 3 ; break;
					case 52 : Fila[i].suma_fila = Fila[i].suma_fila + 4 ;break;
					case 53 : Fila[i].suma_fila = Fila[i].suma_fila + 5 ;break;
					case 54 : Fila[i].suma_fila = Fila[i].suma_fila + 6 ;break;
					case 55 : Fila[i].suma_fila = Fila[i].suma_fila + 7 ;break;
					case 56 : Fila[i].suma_fila = Fila[i].suma_fila + 8 ;break;
					case 57 : Fila[i].suma_fila = Fila[i].suma_fila + 9 ;break;
					case 65 : Fila[i].suma_fila = Fila[i].suma_fila + 10;break;
					case 66 : Fila[i].suma_fila = Fila[i].suma_fila + 11;break;
					case 67 : Fila[i].suma_fila = Fila[i].suma_fila + 12;break;
					case 68 : Fila[i].suma_fila = Fila[i].suma_fila + 13;break;
					case 69 : Fila[i].suma_fila = Fila[i].suma_fila + 14;break;
					case 70 : Fila[i].suma_fila = Fila[i].suma_fila + 15 ;break;
				}
				
				archivo<<Fila[i].bytes[j][k];
						
			}
			
		}
		
		Fila[i].suma_fila = Fila[i].suma_fila + valor_direccion;
		Fila[i].residuo = Fila[i].suma_fila/256;
		Fila[i].residuo = Fila[i].residuo * 256;
		Fila[i].residuo = Fila[i].suma_fila - Fila[i].residuo;
		Fila[i].residuo = 256 - Fila[i].residuo;
		decimal_hexadecimal(Fila[i].residuo,archivo);
		
		valor_direccion = valor_direccion + 16;
		archivo<<"\n";
		
	}
	
	archivo<<"\n00000001FF";
	archivo.close();
	
	system("cls");
	
	Color(PLATA),
	marco_Total();
	Color(MORADO);
	marco_Secundario();
	
	Color(AMARILLO);
	gotoxy(50,20);
	cout<<"ARCHIVO CREADO";
	Color(AZUL);
	gotoxy(50,22);
	cout<<"PROGRAMA TERMINADO";
	Color(VERDE2);
	gotoxy(50,24);
	cout<<"SUAREZ VEGA EDGAR ALAN ";
	
	gotoxy(80,26);
	Color(MORADO);
	cout<<"Presiona Enter para Cerrar ...";
	pausa();
	
}



void menu()
{
	short opc;
	system("cls");
	Color(ROJO);
	marco_Total();
	Color(AZUL);
	marco_Secundario();
	
  do
  {
  	system("cls");
	gotoxy(57,8);
	Color(ROJO);
	printf("MENU");
	gotoxy(40,12);
	Color(VERDE);
	printf("1- Ingresar datos en una Fila Completa");
	gotoxy(40,14);
	Color(AMARILLO);
	printf("2.- Ingresar Datos en un byte especifico");
	gotoxy(40,16);
	Color(PLATA);
	printf("3.-Salir y Crear .hex");
	
	gotoxy(40,18);
	Color(PLATA);
	printf("opcion : ");
	Color(VERDE2);
	cin>>opc;
	
	while(opc > 3 || opc < 0)
	{
		gotoxy(50,20);
		Color(ROJO);
		printf("Ingresa una opcion correcta !");
		gotoxy(40,18);
		printf("                     ");
		gotoxy(40,18);
		Color(PLATA);
		printf("opcion : ");
		Color(VERDE2);
		cin>>opc;
	}
	
	system("cls");
	switch(opc)
	{
		case 1 : ingresar_fila_completa(); break;
		case 2 : ingresar_byte_especifico(); ; break;
		case 3 : crear_archivo(); break;
		
	}
	
  }while(opc!=3);
}



int main(int argc, char** argv) 			//Funcion principal
{
	portada();
	inicializar_memoria_en_cero();
	menu();	
	
	
	gotoxy(90,25);
	return 0;
}
