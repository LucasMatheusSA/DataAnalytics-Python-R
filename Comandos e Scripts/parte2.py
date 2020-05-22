## Execução do Kmeans e exibição grafica dos clusters

import numpy as np
import pandas as pd
import seaborn as sb
from matplotlib import pyplot as plt
from sklearn.cluster import KMeans

Data = pd.read_csv('C:/Users/LUCAS MATHEUS/Desktop/TCC/DADOS/DatasetAlunosEvasaoKMeans.csv')
X = np.array(Data)

col1 = 0
col2 = 0
col3 = 0
col4 = 0

for row in X:
    if (row['K_CLASSES'] == 0):
        col1 += 1
        print("col1:" + col1)
    if (row['K_CLASSES'] == 1):
        col2 += 1
        print("col2:" + col2)
    if (row['K_CLASSES'] == 2):
        col3 += 1
        print("col3:" + col3)
    if (row['K_CLASSES'] == 3):
        col4 += 1
        print("col4:" + col4)

print("col1:" + col1)
print("col2:" + col2)
print("col3:" + col3)
print("col4:" + col4)



# kmeans = KMeans(n_clusters=4, init='k-means++', random_state=0)
# labels = kmeans.fit_predict(X)

# Data['K_CLASSES'] = kmeans.labels_

# # np.savetxt('DatasetAlunosKMeans.csv', ("ALUNO_SITUACAO", "ALUNO_INEP_COD", "INSTITUICAO_CATEGORIA_ADMINISTRATIVA", "INSTITUICAO_ORGANIZACAO_ACADEMICA", "CURSO_TURNO",
# #  "ALUNO_GRAU_ACADEMICO", "ALUNO_COR_RACA", "ALUNO_SEXO", "ALUNO_IDADE", "ALUNO_INGRESSO_VESTIBULAR", "ALUNO_INGRESSO_ENEM", "ALUNO_FINANCIAMENTO_ESTUDANTIL", "ALUNO_ESCOLA_CONCLUSAO_ENS_MEDIO", "K_CLASSES"), delimiter=',')


# plt.scatter(X[labels==0, 0], X[labels==0, 1], s=100, c='yellow', label ='Cluster 1')
# plt.scatter(X[labels==1, 0], X[labels==1, 1], s=100, c='blue', label ='Cluster 2')
# plt.scatter(X[labels==2, 0], X[labels==2, 1], s=100, c='green', label ='Cluster 3')
# plt.scatter(X[labels==3, 0], X[labels==3, 1], s=100, c='cyan', label ='Cluster 4')


# plt.scatter(kmeans.cluster_centers_[:, 0], kmeans.cluster_centers_[:, 1], s=50, c='red',label= 'Centroids')
# plt.xlabel('Idade do aluno')
# plt.ylabel('Categoria administrativa da instituição')
# plt.title('Clusters obtidos')
# plt.show()