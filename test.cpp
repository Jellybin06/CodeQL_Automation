#include <iostream>
#include <string>
#include <unistd.h>
#include <ctime>
#include <iomanip>

class FileAnalyzer {
public:
    FileAnalyzer(const std::string& extension) : extension_(extension) {}

    void analyze(const std::string& filePath) {
        
        if(filePath.find("App/"+extension_) == std::string::npos ){
            std::cout << "The file path must start with App/extension." << std::endl;
            exit(0);
        }

        std::cout << "Start " << extension_ << " File Analysis" << std::endl;
        std::cout << "Analyzing file at path: " << filePath << std::endl;

        if(extension_ == "c"){
            analysisCFile(filePath, currentTime());
        } else if (extension_ == "py") {
            analysisPyFile(filePath, currentTime());
        } else if (extension_ == "c++") {
            analysisCppFile(filePath, currentTime());
        } else {
            std::cout << "Sorry.. We only support c, c++ and py" << std::endl;
        }
    }

    bool isValidExtension(){
        return extension_ == "c" || extension_ == "py" || extension_ == "c++";
    }

    std::string currentTime(){
        std::time_t currentTime = std::time(nullptr);
        std::tm* now = std::localtime(&currentTime);
        std::ostringstream oss;
        oss << std::put_time(now, "%Y-%m-%d-%H-%M");
        std::string timeStr = oss.str();
        return timeStr;
    }
            
private:
    std::string extension_;

    void analysisCFile(const std::string& path, const std::string& timeStr) {
        std::cout << "Analyzing C file: " << path << std::endl;
        std::cout << "Creating database..." << std::endl;        
        std::string command = "codeql database create databases/"+timeStr+" --language=cpp --source-root=" + path;
        std::cout << command << std::endl;
        std::system(command.c_str());
        
    }

    void analysisCppFile(const std::string& path, const std::string& timeStr) {
        std::string xmlFile = "resultFile/"+timeStr;
        std::cout << "Analyzing C++ file: " << path << std::endl;
        std::cout << "Creating database..." << std::endl;
        std::string command = "codeql database create databases/"+timeStr+" --language=cpp --source-root=" + path + " && ./analyze_c++.sh " + timeStr + " " + xmlFile;
        std::cout << command << std::endl;
        std::system(command.c_str());
        
    }

    void analysisPyFile(const std::string& path, const std::string& timeStr) {
        std::cout << "Analyzing Python file: " << path << std::endl;
        std::cout << "Creating database..." << std::endl;
        std::string command = "codeql database create databases/"+timeStr+" --language=cpp --source-root=" + path;
        std::cout << command << std::endl;
        std::system(command.c_str());
        
    } 
};


int main() {
    std::string want, language;
    std::cout << "What would you like to do? " << std::endl; 
    std::cout << "CodeQL_Install (1) & CodeQL_Analysis (2) & exit (3) : ";
    std::getline(std::cin, want);

    if (want == "CodeQL_Install" || want == "1") {
        std::cout << "Proceeding with CodeQL installation." << std::endl;
        if (execl("/bin/sh", "sh", "./install.sh", NULL) == -1) {
            std::cerr << "Error occurred while executing the shell script." << std::endl;
            return 1;
        }
    } else if (want == "CodeQL_Analysis" || want == "2") {
        std::cout << "Please tell me the extension of the file : ";
        std::getline(std::cin, language);
        FileAnalyzer analyzer(language);
        if(analyzer.isValidExtension()){
            std::string filePath;
            std::cout << "Please enter the path to the file to be analyzed : ";
            std::getline(std::cin, filePath);
            analyzer.analyze(filePath);
        } else {
            std::cout << "Sorry.. We only support c, c++ and py" << std::endl;
        }
    } else if (want == "exit" || want == "3") {
        std::cout << "Goodbye." << std::endl;
    } else {
        std::cout << "Please enter a valid value." << std::endl;
    }

    return 0;
}
