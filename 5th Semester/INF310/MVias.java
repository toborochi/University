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

public int cantNodos(){
	return cantNodos(Raiz);
}


private int cantNodos(Nodo T){
	if(T==null)
		return 0;
	else if (Hoja(T)){
		return 1;
	}else{
		int ac=0;
		for(int i=1;i<=NodoM.M;++i){
			int h = cantNodos(T.getHijo(i)));
			ac = ac+h;
		}
		return ac+1;
		// ac = cantidad +1(padre)
	}
}


private int cantHojas(Nodo T){
	if(T==null)
		return 0;
	else if (Hoja(T)){
		return 1;
	}else{
		int ac=0;
		for(int i=1;i<=NodoM.M;++i){
			int h = cantHojas(T.getHijo(i)));
			ac = ac+h;
		}
		return ac;
		// ac = cantidad +1(padre)
	}
}
