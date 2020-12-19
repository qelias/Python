# Sorts lists

import random

def initial_merge(unsorted_list,even=True):

    initial_list=[]

    if even == True:
        stop = len(unsorted_list)
    else:
        stop = len(unsorted_list)-2

    for index in range(0,stop,2):
            # if index == len(unsorted_list)-1:
            #     initial_list.append(unsorted_list[index])
            #     index+=2
            if unsorted_list[index] < unsorted_list[index+1]:
                initial_list.append ( [ unsorted_list[index] , unsorted_list[index+1] ] )
            elif unsorted_list[index] > unsorted_list[index+1]:
                initial_list.append ( [ unsorted_list[index+1] , unsorted_list[index] ] )
            elif  unsorted_list[index] == unsorted_list[index+1]:
                initial_list.append ( [ unsorted_list[index] , unsorted_list[index+1] ] )
    if even == False:
        initial_list.append([unsorted_list[-1]])
    return initial_list

def merge_list(list_to_merge,even=True):

    merged_list=[]
    mini_list = []

    if even == True:
        stop = len(list_to_merge)
    else:
        stop = len(list_to_merge)-2


    for index in range(0,stop,2):
        mini_list.clear()
        while True:
            if list_to_merge[index] == []:
                mini_list.extend(list_to_merge[index+1])
                list_to_merge[index+1].clear()
                break
            elif list_to_merge[index+1] == []:
                mini_list.extend(list_to_merge[index])
                list_to_merge[index].clear()
                break
            else:
                if list_to_merge[index][0] < list_to_merge[index+1][0]:
                    mini_list.append(list_to_merge[index].pop(0))
                elif list_to_merge[index][0] > list_to_merge[index+1][0]:
                    mini_list.append(list_to_merge[index+1].pop(0))
                elif list_to_merge[index][0] == list_to_merge[index+1][0]:
                    mini_list.append(list_to_merge[index+1].pop(0))
                    mini_list.append(list_to_merge[index].pop(0))
        #print(f"mini_list={mini_list}")
        merged_list.append(mini_list[:]) 
    
        #print(f"merged_list={merged_list}")
        '''
        Need to specify [:] because otherwise it does not make a copy but instead 
        When you append that to merged_list, you insert a reference to it. So, now mini_list and merged_list[-1]
        both refer to the same object. Then, you append it again, and all of: merged_list[-2], merged_list[-1],
        and mini_list refer to the same object. Therefore, when you edit mini_list, the items in the list also change. 
        Because all refer to the same object... To put it another way, using merged_list.append(mini_list) does not make a copy of mini_list
        '''
    if even == False:
        merged_list.append(list_to_merge[-1])

    return merged_list



def merge_sort(unsorted_list):
    '''
    Sorting algorithm using the merge method
    '''

    list1 = []

    if len(unsorted_list) == 0:
        print("List to sort is empty")
        return unsorted_list
    if len(unsorted_list) == 1:
        return unsorted_list

    if len(unsorted_list) == 2:
        if unsorted_list[0]<unsorted_list[1]:
            return unsorted_list
        else:
            list1.append(unsorted_list[1])
            list1.append(unsorted_list[0])
            return list1

    list1=initial_merge(unsorted_list,len(unsorted_list)%2==0)

    while True:

        if len(list1) == 1:
            break

        list2=merge_list(list1,len(list1)%2==0)
        list1=list2
        
        if len(list2) == len(unsorted_list):
            break

    return list2[0]



if __name__=="__main__":

    #for i in range(1000):
    mylist= [random.randint(0,100000) for _ in range(10000)]

        #print(f"My unsorted list: {mylist}")
    my_sorted_list=merge_sort(mylist)
        #print(f"My sorted list: {my_sorted_list}")



    mylist.sort()
    if my_sorted_list == mylist:
        print('OK')

    #mylist.sort()
