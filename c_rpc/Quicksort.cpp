#include "Quicksort.h"

VectorInt Quicksort<VectorInt>::sort(int first, int last)
{
    pivote_ = elements_[last];

    std::cout << "Pivote: " << pivote_ << " first: " << first << " last: " << last << std::endl;

    if (first < last)
    {
        for (auto el : elements_)
        {
            std::cout << el << ",";
        }
        std::cout << std::endl;
        int middleIndex = partition(first, last);
        sort(first, middleIndex-1);
        sort(middleIndex, last);
    }

    return elements_;
}

std::vector<Key> Quicksort<std::vector<Key>>::sort(int first, int last)
{
    pivote_ = elements_[last].isSigner_;

    if (first < last)
    {
        int middleIndex = partition(first, last);
        sort(first, middleIndex-1);
        sort(middleIndex, last);
    }

    return elements_;
}

int Quicksort<std::vector<Key>>::partition(int lowIndex, int highIndex)
{
    while (lowIndex < highIndex)
    {
        while (elements_[lowIndex].isSigner_ > pivote_)
            lowIndex++;
        while (elements_[highIndex].isSigner_ < pivote_)
            highIndex--;
        if (lowIndex < highIndex)
        {
            Key auxElement = elements_[highIndex];
            elements_[highIndex] = elements_[lowIndex];
            elements_[lowIndex] = auxElement;
            lowIndex++;
            highIndex--;
        }
    }


    if( lowIndex == highIndex && elements_[highIndex].isSigner_ > elements_[highIndex-1].isSigner_)
    {
        int auxElement = elements_[highIndex].isSigner_;
        elements_[highIndex] = elements_[highIndex - 1];
        elements_[highIndex - 1 ] = elements_[highIndex];
    }

    return lowIndex;
}

int Quicksort<VectorInt>::partition(int lowIndex, int highIndex)
{
    while (lowIndex < highIndex)
    {
        std::cout << "Particiono" << std::endl;
        while (elements_[lowIndex] < pivote_)
            lowIndex++;
        while (elements_[highIndex] > pivote_)
            highIndex--;
        if (lowIndex < highIndex)
        {
            std::cout << lowIndex << "<=" << highIndex << " Values: " << elements_[lowIndex] << "," << elements_[highIndex] << std::endl;
            int auxElement = elements_[highIndex];
            elements_[highIndex] = elements_[lowIndex];
            elements_[lowIndex] = auxElement;
            lowIndex++;
            highIndex--;
        }
    }


    if( lowIndex == highIndex && elements_[highIndex] < elements_[highIndex-1])
    {
        std::cout << lowIndex << "<=" << highIndex << " Values: " << elements_[lowIndex] << "," << elements_[highIndex] << std::endl;
        int auxElement = elements_[highIndex];
        elements_[highIndex] = elements_[highIndex - 1];
        elements_[highIndex - 1 ] = auxElement;
    }
    std::cout << lowIndex << "<=" << highIndex << std::endl;

    for (auto el : elements_)
    {
        std::cout << el << ",";
    }
    std::cout << std::endl;
    return lowIndex;
}
int Quicksort<VectorInt>::getPivot(int first, int last)
{
    int sum = 0;

    for (int i = first; i < last; i++)
    {
        sum = sum + elements_[i];
    }
    return ((sum / elements_.size()) + 1);
}
