// MultiImpl.cpp : Defines the entry point for the application.
//

#include "MultiImpl.h"
#include "Interface.h"

using namespace std;

int main()
{
	int x = 4;
	cout << "X = " << x << ", DoSomething(X) = " << DoSomething(x) << endl;

	cout << "X = " << x << ", SharedThing(X) = " << SharedThing(x) << endl;
	return 0;
}
