#ifndef QUICKSORT_H
#define QUICKSORT_H
#include <vector>
#include <string>
#include <iostream>
#include <tuple>
#include <solanaRpc.h>

typedef std::vector<std::tuple<int, std::string>> TuplesArray;
typedef std::vector<int> VectorInt;
template <class T>
class Quicksort
{

public:
    Quicksort() : pivote_(0){};
    Quicksort(T elements) : pivote_(0), elements_(elements){};
    int pivote_;
    T sort(int first, int last);

private:
    T elements_;
    int partition(int lowIndex, int highIndex);
    int getPivot(int first, int last);
};

template <>
class Quicksort<VectorInt>
{

public:
    Quicksort() : pivote_(0){};
    Quicksort(VectorInt elements) : pivote_(0), elements_(elements){};
    int pivote_;
    VectorInt sort(int first, int last);

private:
    VectorInt elements_;
    int partition(int lowIndex, int highIndex);
    int getPivot(int first, int last);
};


template <>
class Quicksort<std::vector<Key>>
{

public:
    Quicksort() : pivote_(1){};
    Quicksort(std::vector<Key> elements) : pivote_(1), elements_(elements){};
    int pivote_;
    std::vector<Key> sort(int first, int last);

private:
    std::vector<Key> elements_;
    int partition(int lowIndex, int highIndex);
    int getPivot(int first, int last);
};

#endif