import numpy as np

fruit_list=['Banana','Apple','Orange','Pear','Anana','Tomato','Nut','Strawberry','Cherry']
fruit_value={'Banana':5,'Apple':2,'Orange':4,'Pear':2,'Anana':5,'Tomato':3,'Nut':2,'Strawberry':4,'Cherry':4,'Meloon':5}


class Fruit:

    def __init__(self,name,quantity):

        self.name=name
        self.price=fruit_value[self.name]
        self.quantity=quantity

    def __str__(self):
        return f"{self.name}"


class Inventory:

    def __init__(self):

        self.inventory=[]
        self.total_value=0
        for fruit in fruit_list:
            self.inventory.append(Fruit(fruit,np.random.randint(0,10)))
            self.total_value+=self.inventory[-1].quantity*self.inventory[-1].price
        

    def add_item(self,item):

        self.inventory.append(item)
        self.total_value+=self.inventory[-1].quantity*self.inventory[-1].price

    
    def __str__(self):
        item_list=[]
        for item in self.inventory:
            item_list.append((item.name,item.quantity))
        return f"{item_list}"


if __name__ == "__main__":


    fruit_store=Inventory()
    print(fruit_store)
    print(fruit_store.total_value)

    fruit_store.add_item(Fruit('Meloon',2))

    print(fruit_store)
    print(fruit_store.total_value)