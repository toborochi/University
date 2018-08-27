//---------------------------------------------------------------------------

#ifndef TDAListaPunteroH
#define TDAListaPunteroH
//---------------------------------------------------------------------------
#endif

 struct node
  {
    int data;
    node *next;
  };


class TDAListaPuntero
{

	private:
	node *head, *tail;

	public:
	TDAListaPuntero();
     void createnode(int value);

};

