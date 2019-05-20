// Metodo de Insercion del Arbol-M Vias
public void add(int x)
{
	// Arbol vacio
	if(Raiz==null){
		Raiz = new NodoM();
		Raiz.setData(1,x);
		n = 1;
	}else
	// Caso general
	{
			Nodo Ant = null;
			Nodo p = Raiz;
			int i;
			while(p!=null){
			ant = p;
			// cantDataVacia es un metodo que devuelve los espacios vacios del nodo M-Vias
			if(p.cantDataVacia()>0){
				InsOrd(p,x);
				return;
			}
			// Buscamos el hijo
			i = HijoDesc(p,x);
			if(i==1){
				return;
			}
			p = p.getHijo(i);
		}
		// Sino lo pilla creamos el nodo, lo seteamos y el ultimo nodo hacemos que 
		// apunte a al nuevo nodo creado
		NodoM aux = new NodoM();
		// Colocamos el dato en la primeraa posicion
		aux.setData(1,x);
		ant.setHijo(i,aux);
		n++;
	}
}


