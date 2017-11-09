#include <iomanip>
#include<iostream>
#include<fstream>
#include<string>

int main()
{
	std::ifstream infile;
	infile.open("GilXMLPARS/GilFavGames.xml");
	FILE*  f = fopen("GilXMLPARS/GilFavGames.xml", "r");
	if (infile.fail())
	{
		int temp;
		cout << "Yo It failed?" << endl;
		std::cin>> temp;
		exit(1);
	}

	int n=1;
	std::string s;
	int itemp;
	std::cin >> s;

	std::ofstream outData;
	outData.open("outfile..xlsx", std::ios::app);
	outData << n<< std::endl;
	outData << s << std::endl;

	system("pause");

	return 1;
}