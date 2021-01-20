import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns










if __name__=="__main__":

    all_sites = pd.read_csv('G:\\Mes Documents\\Documents\\Python\\Udemy-Python-for-Machine-Learning-and-Data-Science-Masterclass\\Notes\\06-Capstone-Project\\all_sites_scores.csv')
    fandango = pd.read_csv('G:\\Mes Documents\\Documents\\Python\\Udemy-Python-for-Machine-Learning-and-Data-Science-Masterclass\\Notes\\06-Capstone-Project\\fandango_scrape.csv')

    print(all_sites)
    print(fandango)

    #sns.scatterplot(data=fandango,y='VOTES',x='RATING')
    #plt.show()