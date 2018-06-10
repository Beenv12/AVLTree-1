#include "catch.hpp"
#include <tree.hpp>
 
using namespace AVLTree;
TEST_CASE("output values should match input values", "[file]")
{
    TUI obj;
    std::vector<int> a = {3, 4, 4, 2, 6, 5, 7};
    a = obj.CorrectFunction(a);
    REQUIRE(a[2] == 2);
 
    Tree tree = new Tree(a);
 
    obj.outputStars();
    obj.MakeDecisionTree(1,tree);
 
    obj.ChosenFunction();
 
    tree.show();
 
    std::cout << "Pre: ";
    tree.print("pre");
    std::cout << "In: ";
    tree.print("in");
    std::cout << "Post: ";
    tree.print("post");
 
    bool isInsert = tree.insert(95);
    REQUIRE(isInsert == true);
    REQUIRE(tree.exists(95) == true);
 
    bool isDelete = tree.remove(95);
    REQUIRE(isDelete == true);
    REQUIRE(tree.exists(95) == false);
    bool isDelete4 = tree.remove(7);
    REQUIRE(isDelete == true);
    REQUIRE(tree.exists(7) == false);
 
    std::string path = "test.txt";
    REQUIRE(tree.fileExist("not_file.txt") == false);
    bool isWrite = tree.save("test.txt");
    REQUIRE(isWrite == true);
    bool isRead = tree.load(path);
    REQUIRE(isRead == true);
 
    delete *tree;
}
