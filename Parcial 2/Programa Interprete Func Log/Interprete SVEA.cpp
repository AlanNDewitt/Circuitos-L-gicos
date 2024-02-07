#include <iostream>
#include <windows.h>
#include "libgame.h"		//librería propia
#include <string.h>
#include <fstream>

using namespace std;

void portada()			//Funcion de La Portada inicial
{
	OcultaCursor();
	Color(VERDE2);
	marco_Secundario();
	datos();
	
	Beep(300 ,1500);
	
	gotoxy(80,23);
	cout<<"Presiona Enter para Continuar ...";
	pausa();
	system("cls");
}

void Programa()		// Funcion principal del programa
{
	short opc,terminos = 0, caracteres;
	char funcion[100];
	char nombre[30];
	bool first = false;
	
	for(short i = 0 ; i < 100 ; i++)
    {
       funcion[i] = '-';
    }
	
	
	system("cls");
	Color(ROJO);
	marco_Total();
	Color(AZUL);
	marco_Secundario();

	
  
  	system("cls");
	gotoxy(57,8);
	Color(ROJO);
	cout<<"INICIO";
	gotoxy(35,12);
	Color(AMARILLO);
	cout<<"Ingresa el nombre del archivo .TXT  *SIN ESPACIOS*";
	gotoxy(40,14);
	Color(AZUL);
	cout<<"Nombre : ";
	Color(VERDE2);
	cin>>nombre;
	
	system("cls");
	Color(AZUL);
	gotoxy(40,4);
	cout<<"INSTRUCCIONES";
	Color(PLATA);
	gotoxy(40,6);
	cout<<"* Ingresa la funcion sin espacios";
	gotoxy(40,7);
	cout<<"* Letras mayusculas = Variable Normal";
	gotoxy(40,8);
	cout<<"* Letras minusculas = Variable Negada";
	gotoxy(40,9);
	cout<<"* AND = Sin Espacios ; OR = + ; XOR = *";
	gotoxy(40,10);
	cout<<"* Uso de Parentesis Soportado";
	
	Color(AMARILLO);
	gotoxy(40,15);
	cout<<"Ingresa la funcion : ";
	Color(VERDE2);
	cin>>funcion;
	
	for(short i = 0 ; i < 100 ; i++)
    {
       if(funcion[i] == '-' && first == false)
       {
       	 caracteres = i;
       	 first = true;
	   }
    }
	
	ofstream archivo;
	
	archivo.open(nombre,ios::out);
	
	if(archivo.fail())
	{
		cout<<"no se pudo abrir";
		exit(1);
	}
	
	archivo<<"\n\n\tFUNCION :  ";
	
	gotoxy(40,20);
	Color(AMARILLO);
	cout<<"Funcion CULP : ";
	Color(VERDE);
	gotoxy(55,20);

	
	for(short i = 0 ; i < caracteres-1 ; i++)
    {
    	if( i > 0 && i < caracteres-1 && funcion[i] != '+'    && funcion[i] != ')' && funcion[i] != '*' 
		&& funcion[i-1] != '+' && funcion[i-1] != '('   && funcion[i-1] != '*') 
		
    	{
    		archivo<<"&";
    		cout<<"&";
		}
        switch (funcion[i])
        {
        	case 'A' : archivo<<"A"; cout<<"A"; break;
        	case 'B' : archivo<<"B"; cout<<"B";  break;
        	case 'C' : archivo<<"C"; cout<<"C";  break;
        	case 'D' : archivo<<"D"; cout<<"D";  break;
        	case 'E' : archivo<<"E"; cout<<"E";  break;
        	case 'F' : archivo<<"F"; cout<<"F";  break;
        	case 'G' : archivo<<"G"; cout<<"G";  break;
        	case 'H' : archivo<<"H"; cout<<"H";  break;
        	case 'I' : archivo<<"I"; cout<<"I";  break;
        	case 'J' : archivo<<"J"; cout<<"J";  break;
        	case 'K' : archivo<<"K"; cout<<"K";  break;
        	case 'L' : archivo<<"L"; cout<<"L";  break;
        	case 'M' : archivo<<"M"; cout<<"M";  break;
        	case 'N' : archivo<<"N"; cout<<"N";  break;
        	case 'O' : archivo<<"O"; cout<<"O";  break;
        	case 'P' : archivo<<"P"; cout<<"P";  break;
        	case 'Q' : archivo<<"Q"; cout<<"Q";  break;
        	case 'R' : archivo<<"R"; cout<<"R";  break;
        	case 'S' : archivo<<"S"; cout<<"S";  break;
        	case 'T' : archivo<<"T"; cout<<"T";  break;
        	case 'U' : archivo<<"U"; cout<<"U";  break;
        	case 'V' : archivo<<"V"; cout<<"V";  break;
        	case 'W' : archivo<<"W"; cout<<"W";  break;
        	case 'X' : archivo<<"X"; cout<<"X";  break;
        	case 'Y' : archivo<<"Y"; cout<<"Y";  break;
        	case 'Z' : archivo<<"Z"; cout<<"Z";  break;
        	
        	case 'a' : archivo<<"!A"; cout<<"!A"; break;
        	case 'b' : archivo<<"!B"; cout<<"!B"; break;
        	case 'c' : archivo<<"!C"; cout<<"!C"; break;
        	case 'd' : archivo<<"!D"; cout<<"!D"; break;
        	case 'e' : archivo<<"!E"; cout<<"!E"; break;
        	case 'f' : archivo<<"!F"; cout<<"!F"; break;
        	case 'g' : archivo<<"!G"; cout<<"!G"; break;
        	case 'h' : archivo<<"!H"; cout<<"!H"; break;
        	case 'i' : archivo<<"!I"; cout<<"!I"; break;
        	case 'j' : archivo<<"!J"; cout<<"!J"; break;
        	case 'k' : archivo<<"!K"; cout<<"!K"; break;
        	case 'l' : archivo<<"!L"; cout<<"!L"; break;
        	case 'm' : archivo<<"!M"; cout<<"!M"; break;
        	case 'n' : archivo<<"!N"; cout<<"!N"; break;
        	case 'o' : archivo<<"!O"; cout<<"!O"; break;
        	case 'p' : archivo<<"!P"; cout<<"!P"; break;
        	case 'q' : archivo<<"!Q"; cout<<"!Q"; break;
        	case 'r' : archivo<<"!R"; cout<<"!R"; break;
        	case 's' : archivo<<"!S"; cout<<"!S"; break;
        	case 't' : archivo<<"!T"; cout<<"!T"; break;
        	case 'u' : archivo<<"!U"; cout<<"!U"; break;
        	case 'v' : archivo<<"!V"; cout<<"!V"; break;
        	case 'w' : archivo<<"!W"; cout<<"!W"; break;
        	case 'x' : archivo<<"!X"; cout<<"!X"; break;
        	case 'y' : archivo<<"!Y"; cout<<"!Y"; break;
        	case 'z' : archivo<<"!Z"; cout<<"!Z"; break;
        	
        	
        	case '+' : archivo<<"#"; cout<<"#"; break;
        	case '*' : archivo<<"$"; cout<<"$"; break;
        	case '(' : archivo<<"("; cout<<"("; break;
        	case ')' : archivo<<")"; cout<<")"; break;
		}
		
    }
    
	
    gotoxy(40,26);
	Color(VERDE2);
	cout<<" PRESIONA ENTER PARA FINALIZAR Y CREAR ARCHIVO TXT" ;
	
	pausa();
    
    archivo.close();
    

	

  
  system("cls");
  
  
}


int main()
{
	portada();
	Programa();
	
	gotoxy(50,15);
	Color(MORADO);
	cout<<"PROGRAMA TERMINADO";
	
	gotoxy(50,17);
	Color(VERDE2);
	cout<<"SUAREZ VEGA EDGAR ALAN";
	
	gotoxy(50,22);
	
	
	
	return 0;
}
