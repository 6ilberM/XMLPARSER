#include <iomanip>
#include<iostream>
#include<fstream>
#include<string>
using namespace std;
int main()
{
	ifstream infile;
	infile.open("GilXMLPARS/GilFavGames.xml");
	//
	if (infile.fail())
	{
		int temp;
		cout << "Yo It failed?" << endl;
		std::cin>> temp;
		exit(1);
	}
	int n=1;
	string s;
	int itemp;
	std::cin >> s;

	ofstream outData;
	outData.open("outfile..xlsx", ios::app);
	outData << n<<endl;
	outData << s << endl;

	system("pause");

	return 1;
}