#un-optimized source-code!

import pandas as pd
import sys
import csv

import matplotlib.pyplot as plt
import seaborn as sns
from statistics import NormalDist

from scipy.stats import chi2_contingency

# Show all columns
pd.set_option('display.max_columns', None)
##pd.set_option('display.max_columns', None)

# Show all rows/lines(opțional)
#pd.set_option('display.max_rows', None)

# Show entire/complete content for each column(avoid truncation of content)
#pd.set_option('display.max_colwidth', None)

##############################################################
# loading Historical data file which contain the serial-signal:
##############################################################
dd_beg_aHist = "01"
mm_beg_aHist = "01"
yyyy_beg_aHist = "2024"
dt_beg_aHist = mm_beg_aHist + dd_beg_aHist + yyyy_beg_aHist   ##"01012024"

dd_end_aHist = "14"
mm_end_aHist = "02"
yyyy_end_aHist = "2025"
dt_end_aHist = mm_end_aHist + dd_end_aHist + yyyy_end_aHist   ##"02142025"

data_filename_ext = "xlsx"
point_fn_ext = "."
data_filename_head_string = "aHistorical"
data_filename_separator="_"

# Load your data into a DataFrame
# ----------------------------- #
dir_name = "Files_for_Prediction_Model"
current_dir = "."
dir_separator = "\\"

directory = current_dir + dir_separator + dir_name + dir_separator   ##.\Files_for_Prediction_Model\

filename = data_filename_head_string + data_filename_separator + dt_beg_aHist + data_filename_separator + dt_end_aHist + point_fn_ext + data_filename_ext    ##aHistorical_01012024_02142025.xlsx

hist_fn = directory + filename  ##.\Files_for_Prediction_Model\aHistorical_01012024_02142025.xlsx
print(hist_fn, flush=True)

df = pd.read_excel(hist_fn)

count_of_rows=df.shape[0] ##61752
count_of_cols=df.shape[1] ##18


##print(df.head(), flush=True)
#print("DataFrame (rows,cols):", df.shape, flush=True)
##print("DataFrame have ", count_of_rows, " rows with ", count_of_cols, " cols/row!",  flush=True)

distincte_values_of_columns = df.nunique()
##print("Count of distinct value[s] for each column :\n", distincte_values_of_columns)


#####################################################################################################################################
# show distinct values for each column(can be filtered by count of distinct-values: count must be in theresholds-range(min-max)!!!)
#####################################################################################################################################
cols_name=['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R']

max_distinct_vals_threshold = 10 # the max-threshold for listing distinct values: 169,..268,...275,...357,...761,...61752
min_distinct_vals_threshold =  2 # the min-threshold for listing distinct values:   0,    1,     2,     5,...
print('\n--- Distinct values for count (', min_distinct_vals_threshold, '..', max_distinct_vals_threshold, ') ---', flush=True)
for idx, col in enumerate(df.columns):
    uniq_cnt = df[col].nunique()    
    if uniq_cnt < max_distinct_vals_threshold and uniq_cnt > min_distinct_vals_threshold:
        uniq_vals = df[col].unique()
        print('\n----------------------------------------', flush=True)
        col_letter=cols_name[idx]
        print(f"\nColumn {col_letter}", flush=True)
        print(f"  Count of distinct values: {uniq_cnt}", flush=True)
        print(f"  Distinct values: {uniq_vals}", flush=True)
print('\n----------------------------------------', flush=True)


col_idx_player_name = 0         ##A=Player(name is part of Player's Identification): 275 distinct-values/name of players
col_idx_player_born_date = 1    ## col 'B' is born-date: MM-DD-YYYY(is part of Players's identification): 268 distinct-values/born-dates(maybe some players borned at same-date!!!) - can be ID for player!!!
col_idx_result = 7              ##H=Result: 2 distinct-values ... OVER/WON or UNDER/LOSE
delim_char="-"
col_idx_planetsCombo = 11       ##L=Planets combo(of 2 planets):  169 distinct-values like ... ['Chiron_Jupiter' 'Chiron_Mars' 'Chiron_Mercury' 'Chiron_Moon'  'Chiron_Neptune' 'Chiron_Node' 'Chiron_Sun' 'Chiron_Uranus' 'Chiron_Venus' ...]
col_idx_intensityDegree = 12    ##M=Intensity 5 degree/distinct values: ['BLK_Square' 'BLK_Triangle' 'BLK_Star' 'BLK_Balls' 'BLK_Poker']
col_idx_planetIntensity = 13    ##N=Planets/Intensity: 761+1 distinct-values..., where N=concat(L,'-',M) so L,M,N not completely-independentely (one column from them can be ignored...maybe M because is derivated from N si L!!!)
##...like:  ['Chiron_Jupiter-BLK_Square' 'Chiron_Jupiter-BLK_Triangle'  'Chiron_Mars-BLK_Triangle' 'Chiron_Mercury-BLK_Square' 'Chiron_Mercury-BLK_Star' 'Chiron_Moon-BLK_Square' 'Chiron_Neptune-BLK_Square' 'Chiron_Node-BLK_Balls'
## 'Chiron_Node-BLK_Square' 'Chiron_Sun-BLK_Balls' 'Chiron_Uranus-BLK_Square' 'Chiron_Uranus-BLK_Star' 'Chiron_Venus-BLK_Star'...]
col_idx_data = 15               ##P data: MM-DD-YYYY ... time/temporal-column for the serie ... 357+1 distinct-values...like ['(01-01-2024)',...]
col_idx_year = 16               ## and ... ##Q=year(P) - can be ignored ....2 distinct-values: [2024 2025]
## the last column 'R' contain one/single(1) constant value-string of ... 'MP%'
## in rest of columns(2,3,4,5,6, 8,9,10, 14, 17] .... Have a one/single(1) constant value-digit (of 1) for entire each-column

#######################################
# - let check if older_N=concat(older_L,older_M) 
#######################################
N_equal_L_concat_with_N_invalid_row_indices = df.index[~(df.iloc[:, col_idx_planetIntensity] == df.iloc[:, col_idx_planetsCombo] + delim_char + df.iloc[:, col_idx_intensityDegree])
].tolist()


if not N_equal_L_concat_with_N_invalid_row_indices:
    print("The list is empty. All lines/rows respect the rule N = L-M.")
else:
    print("Indexs-List where N ≠ L-M::", N_equal_L_concat_with_N_invalid_row_indices)
    
###########################################################################
# -replace L-column with row-index from its reference-source-distinct-values
###########################################################################
pre_cols_fn = "bColumn"
post_cols_fn = "Signs" + data_filename_separator + "Symbols" ## Signs_Symbols

#List col L - before replacing:
col_fn = 'L'
#print(df.columns)
# Normalizee the values from L -column:
df.iloc[:, col_idx_planetsCombo] = df.iloc[:, col_idx_planetsCombo].astype(str).str.strip()
#print(df.head(), flush=True)
##print('Col L - destination-normalized-values - before replacing:', flush=True)
##print(df.iloc[:, col_idx_planetsCombo].head(10), flush=True)

# Loading the distinct values for L-column from external file
L_col_fn_distinct_values = pre_cols_fn + data_filename_separator + col_fn + data_filename_separator + post_cols_fn + point_fn_ext + data_filename_ext         ## bColumn_L_Signs_Symbols.xlsx
L_col_fn_distinct_vals = directory + L_col_fn_distinct_values                                                                                                 ##.\Files_for_Prediction_Model\bColumn_L_Signs_Symbols.xlsx
#print(L_col_fn_distinct_vals, flush=True)
L_distinct_values_df = pd.read_excel(L_col_fn_distinct_vals, header=None)
#print(L_distinct_values_df.columns)
# Normalize the distinct values from reference-file:
col_idx = 0
L_distinct_values_df.iloc[:, col_idx] = L_distinct_values_df.iloc[:, col_idx].astype(str).str.strip()
##print('The normalized values from distinct-values reference-source-file for L-column:', flush=True)
##print(L_distinct_values_df.head(), flush=True)

# Create L-dictionary one : value → row-index
L_value_to_index = {val: str(idx) for idx, val in enumerate(L_distinct_values_df[col_idx])}
##print('Distinct-Values for L-column:', flush=True)
##print(L_value_to_index, flush=True)

# Replace the values from L-column using the distinct-values from file which contain distinct-values for it(bColumn_L_Signs_Symbols.xlsx):
##note that I setted directly the col_idx_planetsCombo but I can find it with: col_idx_planetsCombo = df.columns.get_loc("L")
# Replace the values from L-column with the row-index(from dictionary):
df.iloc[:, col_idx_planetsCombo] = df.iloc[:, col_idx_planetsCombo].map(L_value_to_index)

# Check the result of replacing...
#List col L - after replacing:
##print('Col L - values - after replacing:', flush=True)
##print(df.iloc[:, col_idx_planetsCombo].head(10), flush=True)

###################################################################
# -... similar Replacement for 'N'-column:... instead of 'L'-column
###################################################################

#List col N - before replacing:
col_fn = 'N'
#print(df.columns)
# Normalizee the values from N -column:
df.iloc[:, col_idx_planetIntensity] = df.iloc[:, col_idx_planetIntensity].astype(str).str.strip()
#print(df.head(), flush=True)
##print('Col N - destination-normalized-values - before replacing:', flush=True)
##print(df.iloc[:, col_idx_planetIntensity].head(10), flush=True)

# Loading the distinct values for N-column from external file
N_col_fn_distinct_values = pre_cols_fn + data_filename_separator + col_fn + data_filename_separator + post_cols_fn + point_fn_ext + data_filename_ext         ## bColumn_N_Signs_Symbols.xlsx
N_col_fn_distinct_vals = directory + N_col_fn_distinct_values                                                                                                 ##.\Files_for_Prediction_Model\bColumn_N_Signs_Symbols.xlsx
#print(N_col_fn_distinct_vals, flush=True)
N_distinct_values_df = pd.read_excel(N_col_fn_distinct_vals, header=None)
#print(N_distinct_values_df.columns)
# Normalize the distinct values from reference-file:
#col_idx = 0
N_distinct_values_df.iloc[:, col_idx] = N_distinct_values_df.iloc[:, col_idx].astype(str).str.strip()
##print('The normalized values from distinct-values reference-source-file for N-column:', flush=True)
##print(N_distinct_values_df.head(), flush=True)

# Create N-dictionary one : value → row-index
N_value_to_index = {val: str(idx) for idx, val in enumerate(N_distinct_values_df[col_idx])}
##print('Distinct-Values for N-column:', flush=True)
##print(N_value_to_index, flush=True)

# Replace the values from l-column using the distinct-values from file which contain distinct-values for it(bColumn_N_Signs_Symbols.xlsx):
##note that I setted directly the col_idx_planetIntensity but I can find it with: col_idx_planetIntensity = df.columns.get_loc("N")
# Replace the values from N-column with the row-index(from dictionary):
df.iloc[:, col_idx_planetIntensity] = df.iloc[:, col_idx_planetIntensity].map(N_value_to_index)

# Check the result of replacing...
#List col N - after replacing:
##print('Col N - values - after replacing:', flush=True)
##print(df.iloc[:, col_idx_planetIntensity].head(10), flush=True)

###################################################################################################################
# -drop/delete/eliminate column which have one single/unique-constant value(because these is irrelevant-columns!!!):
###################################################################################################################
ignored_constant_ids = [2,3,4,5,6, 8,9,10, 14, 17] ##C,D,E,F,G, I,J,K, O,  R 
ignored_constant_cols = df.columns[ignored_constant_ids]
df_without_constant_cols = df.drop(columns=ignored_constant_cols) 
#DataFrame without  columns which have one single constant-unique-value in each column
##print('\n====== remain only categorial-columns...which no have/populated with... one single constant-value like 1 or MP% ======', flush=True)
##print(df_without_constant_cols.head().to_string(index=False, header=False), flush=True)

#######################################
# - let check if year(older-P)=older-Q:
#######################################
col_idx_data=6 ## older P
col_idx_year=7 ## older Q
PQ_invalid_row_indices = df[
    pd.to_datetime(df_without_constant_cols.iloc[:, col_idx_data].str.strip("()")).dt.year.astype(str) != df_without_constant_cols.iloc[:, col_idx_year].astype(str)
].index.tolist()
if ~len(PQ_invalid_row_indices) == 0:
    print('The lines/rows-indexs which not respect the rule year(P)=Q:', flush=True)
    print(PQ_invalid_row_indices, flush=True)


###################################################################
# -(again)drop irrelevant/redundant columns: like:
#      L and M because have N,which N=concat(L,M) 
#      ... or... 
#      Q because have P(date=MM-DD-YYYY which include year=YYYY=Q)
####################################################################
ignored_irrelevant_ids = [3,4, col_idx_year] ##col_idx_planetsCombo=(older)L, col_idx_intensityDegree=(older)M, col_idx_year=(older)Q
ignored_irrelevant_cols = df_without_constant_cols.columns[ignored_irrelevant_ids]
df_without_cnstnt_and_irrlvnt_cols = df_without_constant_cols.drop(columns=ignored_irrelevant_cols)
##print('Final time-serie dataset:', flush=True)
##print(df_without_cnstnt_and_irrlvnt_cols.head().to_string(index=False, header=False), flush=True)


##################################################################
# - let create dictionary one from first 2 columns player-bornDate
###################################################################

#delim_char = "-"

# Dictionary to keep unique values of player_name-payer_bornDate:
unique_players_dict = {}

# Scan row by row:
for _, row in df_without_cnstnt_and_irrlvnt_cols.iterrows():
    try:
        key = f"{row.iloc[col_idx_player_name]}{delim_char}{row.iloc[col_idx_player_born_date]}"
        if key not in unique_players_dict:
            unique_players_dict[key] = True
    except Exception as e:
        print(f"Error ar row: {row}\n{e}")

# Show without Unicode-chars which can give error in console
##print("Players-Dictionary unique/distinct-value (Name-BornDate):".encode(sys.stdout.encoding, errors='replace').decode())
##for k in unique_players_dict:
##    print(k.encode(sys.stdout.encoding, errors='replace').decode(), flush=True)

# (Opțional) Save dictionary-resulted in external file(275 unique rows)
dict_filename  ="unique_players.txt"
dict_fn = directory + dict_filename
with open(dict_fn, "w", encoding="utf-8") as f:
    for k in unique_players_dict:
        f.write(k + "\n")

# -now need to use it/this dictionary(unique_players):

# Create list one with players-key in the dict-order (or list(dict.keys()))
player_keys_list = list(unique_players_dict.keys())

# Map each key at index one (position in the list)
key_to_index = {k: idx for idx, k in enumerate(player_keys_list)}

# Now suppouse that df_without_cnstnt_and_irrlvnt_cols is my DataFrame-ul with columns:
# [0] = player_name, [1] = player-bornDate
# Replace first columns 2 cols with the index from dict

# Create new column of indexs
def get_player_index(row):
    key = f"{row.iloc[col_idx_player_name]}-{row.iloc[col_idx_player_born_date]}"
    return key_to_index.get(key, -1)  # dacă nu e găsit, returnăm -1

# There place the settings of real indexs for cols(if not already exist!:)
#col_idx_player_name = 0
#col_idx_player_born_date = 1

# Create the new modified DataFrame:
df_modified = df_without_cnstnt_and_irrlvnt_cols.copy()
df_modified.insert(0, "PlayerIndex", df_modified.apply(get_player_index, axis=1))  # inserează noua coloană la început
df_modified.drop(df_modified.columns[[1, 2]], axis=1, inplace=True)  # elimină fostele coloane de nume și dată

# Print the result:
#print(df_modified.head())
##print(df_modified)

# - let sort by last column: time/date of time-serie
# The index of last col (calendaristic date)
col_idx_data = 3

# Erase de  parantheses and convert into datetime
df_modified.iloc[:, col_idx_data] = df_modified.iloc[:, col_idx_data].str.replace(r'[()]', '', regex=True)
df_modified.iloc[:, col_idx_data] = pd.to_datetime(df_modified.iloc[:, col_idx_data], format="%m-%d-%Y")

# Sort by this column
df_modified = df_modified.sort_values(by=df_modified.columns[col_idx_data]).reset_index(drop=True)

# Show firt rows to validating:
##print(df_modified.to_string(index=False, header=False))
# optional can be saved:
#df_modified.to_csv(hist_fn, index=False, header=False)

"""
# - let create one dictionary for last-column(date-time):

# Convert the col col_idx_data în datetime
df_modified.iloc[:, col_idx_data] = pd.to_datetime(df_modified.iloc[:, col_idx_data])


# Get unique/distinct-values ordered
unique_dates_sorted = sorted(df_modified.iloc[:, col_idx_data].unique())

# Create the dict (dată → index)
date_dict = {date: idx for idx, date in enumerate(unique_dates_sorted)}

#Show dict
##print("The dict ordered by last-column calendaristic-date:")
##for k, v in date_dict.items():
##    print(f"{k.date()} : {v}", flush=True)

# (Opțional) Save dictionary-resulted in external file(358 unique-rows):
dict_filename  ="unique_calendaristic_date.csv"
dict_fn = directory + dict_filename
# Save dictionary to a CSV file 358 records
with open(dict_fn, "w", newline="") as f:
    writer = csv.writer(f)
    writer.writerow(["Date", "Index"])
    for k, v in date_dict.items():
        writer.writerow([k.strftime('%Y-%m-%d'), v])
        

# Replace the values form column index col_idx_data with the index from dict
df_modified.iloc[:, col_idx_data] = df_modified.iloc[:, col_idx_data].map(date_dict)

# Show the  DataFrame resulted:
##print("\nDataFrame-ul modified by last column using dictionary-key:")
##print(df_modified, flush=True)
"""

# -let convert last-col into date-time:

df_modified.iloc[:, col_idx_data] = pd.to_datetime(df_modified.iloc[:, col_idx_data], format='%d-%m-%Y', errors='coerce')

# - rename col 3(calendar_date) and  ASC-ordering 
df_modified = df_modified.sort_values(by=df_modified.columns[col_idx_data])                         # Ordonare ascendentă folosind indexul cooanei
df_modified.rename(columns={df_modified.columns[col_idx_data]: 'calendar_date'}, inplace=True)     #redenumire coloana- varianta 1
#df_modified.columns.values[col_idx_data] = 'calendar_date'                                         #redenumire coloana- varianta 2(nefunctionala)
#df_modified =df_modified.sort_values(by='calendar_date')                                           #Ordonare ascendentă folosind denumirea coloanei
#df_modified = df_modified.sort_values(by='calendar_date', ascending=False)                         #Ordonare descendentă folosind denumirea coloanei
df_modified = df_modified.reset_index(drop=True)                                                    # resetare index pt a avea un index curat

df_modified['calendar_date'] = pd.to_datetime(df_modified['calendar_date'])                         #1. Convertirea datei în format datetime:
df_modified = df_modified.sort_values(by='calendar_date')                                           #2. Ordonare/Sortarea după dată:

# - let replace/codify the col with index 1 : UNDER=0 and OVER=1
under_code=0
over_code=1
col_idx_result=1
#df_modified.iloc[:, col_idx_result] = df_modified.iloc[:, col_idx_result].replace({'UNDER': under_code, 'OVER': over_code})
df_modified.iloc[:, col_idx_result] = df_modified.iloc[:, col_idx_result].map({'UNDER': under_code, 'OVER': over_code})

# -rename and type-conversion the column-index=1(result)
df_modified.rename(columns={df_modified.columns[col_idx_result]: 'result'}, inplace=True)           #redenumire coloana- varianta 1
df_modified['result'] = df_modified['result'].astype(int)                                           #3. Conversia coloanelor numerice din object → int sau float:


# Show the  DataFrame final resulted:
##print("\nDataFrame-ul modified by last column using dictionary-key:")
##print('Player-Born.idx, Result.code, Planets-Intensity.idx, Calendar_Date(and Time: DD-MM-YYYY 00:00:00)', flush=True)
##print(df_modified, flush=True)
##print(df_modified.head(10).to_string(header=False, index=False))

#-show index NaN for all columns
print('show all rows with index having NaN for all columns:',flush=True)
print(df[df.iloc[:, 0:4].isna().any(axis=1)].index,flush=True)
#-show all column with NaN
print('show all rows with column having NaN:', flush=True)
rows_with_nan = df[df.iloc[:, 0:4].isna().any(axis=1)]
print(rows_with_nan,flush=True)
#-count all rows with NaN
count = df.iloc[:, 0:4].isna().any(axis=1).sum()
print(f"Numar de randuri cu cel putin un NaN in coloanele 0-3: {count}", flush=True)

# -rename and type-conversion the column-index=2(planets_intensity)
col_idx_planets_intensity=2                            
df_modified.rename(columns={df_modified.columns[col_idx_planets_intensity]: 'planets_intensity'}, inplace=True)     #redenumire coloana- varianta 1(fosta: Chiron_Jupiter-BLK_Balls)

df_modified['planets_intensity'] = df_modified['planets_intensity'].fillna(-1).astype(int)                          #Inlocuieste valoarea NaN inainte de conversie cu o valoare inexistenta!(-1)

########tratare Nan/-1#####
import numpy as np
# 1. Verifică câte valori -1 sunt
count_minus1 = (df_modified['planets_intensity'] == -1).sum()
print(f"Numar de randuri cu planets_intensity = -1: {count_minus1}")

# 2. Înlocuiește -1 cu NaN
df_modified['planets_intensity'] = df_modified['planets_intensity'].replace(-1, np.nan)

# 3. Înlocuiește NaN cu media valorilor valide
mean_valid = df_modified['planets_intensity'].mean()
df_modified['planets_intensity'] = df_modified['planets_intensity'].fillna(mean_valid)

# 4. Verificare: nu mai există -1 sau NaN
print(f"Valori -1 ramase: {(df_modified['planets_intensity'] == -1).sum()}")
print(f"Valori NaN ramase: {df_modified['planets_intensity'].isna().sum()}")

# 5. Verificare opțională: distribuția după curățare
print(df_modified['planets_intensity'].describe())

#########


print('Count of rows which have NaN in column-2 planets_intensity: (must be 0!)', flush=True)
print(df_modified['planets_intensity'].isna().sum(), flush=True)                                                    # ar trebui să fie 0
df_modified['planets_intensity'] = df_modified['planets_intensity'].astype(int)                                     #3. Conversia coloanelor numerice din object → int sau float:


df_sorted = df_modified.sort_values(by='calendar_date')                                                              # sortare dupa coloana temporala
print(df_sorted.head(10))                                                                                            # sau orice număr de rânduri dorești să vezi

###################################################################################################################################

# distribution claselor on all columns:
print('Types:',flush=True)
print(df_modified.dtypes)

# Presupunând că ai deja un DataFrame numit df_modified

# Setează stilul pentru grafice
sns.set(style="whitegrid")

# Creează un grafic pentru fiecare coloană
n_cols = df_modified.shape[1]  # Numărul de coloane din DataFrame
n_rows = (n_cols // 2) + (n_cols % 2)  # Numărul de rânduri pentru sub-ploturi, în funcție de numărul de coloane

# Creează figura și sub-axele
fig, axes = plt.subplots(nrows=n_rows, ncols=2, figsize=(10, 8))

# Aplatizează array-ul axes pentru a-l accesa ușor
axes = axes.flatten()

# Creează evaluari numerice si histograme pentru fiecare coloană:
for idx in range(n_cols):
    # Iterează prin indexurile coloanelor 0, 1, 2 și 3    
    # - afisare rezultate cantitativ/valori-numerice:
    print(f"Value counts for column {df_modified.columns[idx]}:")
    print(df_modified.iloc[:, idx].value_counts(normalize=True))
    print("\n", flush=True)
    # - afisare rezultate calitativ/histograme:
    ax = axes[idx]  # Alege sub-axul corespunzător
    sns.histplot(df_modified.iloc[:, idx], ax=ax, kde=True, color='skyblue', bins=20)  # Histogramă + KDE
    ax.set_title(f'Distribuția pentru coloana {idx}')
    ax.set_xlabel(f'Coloana {idx}')
    ax.set_ylabel('Frecvență')

# Ajustează layout-ul pentru a nu suprapune graficele
plt.tight_layout()
plt.show()


#✅ I.Analiză descriptivă:

#Distribuții și corelații:

print('1.Statistici de baza:',flush=True)
print(df_modified[['PlayerIndex', 'result', 'planets_intensity']].describe(),flush=True)   #distributii

print('2.Matricea de corela[re/tie](Pearson):',flush=True)
print(df_modified.corr(numeric_only=True),flush=True)                                      # Matrice de corelație

#Histogramă pentru planets_intensity:
import matplotlib.pyplot as plt
df_modified['planets_intensity'].hist(bins=30)
plt.title('Distribuția intensității planetelor')
plt.xlabel('Valoare')
plt.ylabel('Frecvență')
plt.show()


#Evoluție în timp (medie zilnică a intensității):
df_modified.groupby('calendar_date')['planets_intensity'].mean().plot()
plt.title('Medie zilnică a planets_intensity')
plt.xlabel('Data')
plt.ylabel('Intensitate')
plt.show() 

#✅ Dacă vrei doar să sortezi sau vizualizezi:

df_sorted = df_modified.sort_values(by=['calendar_date', 'planets_intensity'], ascending=[True, False])
print('3. Sortare dupa calendar_date crescator si planets_intensity descrescator:',flush=True)
print('Vizualizare sortare coloane calendar_date:ASC=True, planets_intensity:ASC=False:', flush=True )
print(df_sorted.head(20), flush=True)   


###############################################
#✅ 1. Discretizarea valorilor planets_intensity în low, medium, high
#Folosim pd.qcut() pentru a împărți valorile în 3 intervale egale ca număr de rânduri:

# -Discretizare în 3 intervale (low, medium, high)
df_sorted['intensity_level'] = pd.qcut(df_sorted['planets_intensity'], q=3, labels=['low', 'medium', 'high'])

# -Verificare distribuție
print(df_sorted['intensity_level'].value_counts(), flush=True)

#✅ 2. Boxplot: planets_intensity vs. result
plt.figure(figsize=(8, 5))
sns.boxplot(x='result', y='planets_intensity', data=df_sorted)
plt.title('Boxplot: Planets-Intensity vs. Result')
plt.xlabel('Result (0 = Pierdere, 1 = Victorie)')
plt.ylabel('Planets-Intensity')
plt.grid(True)
plt.show()

#✅ 3. Scatter plot: planets_intensity vs. result (cu jitter)
#Acest grafic ajută la vizualizarea dispersiei:

plt.figure(figsize=(8, 5))
sns.stripplot(x='result', y='planets_intensity', data=df_sorted, jitter=0.25, alpha=0.5)
plt.title('Scatter Plot: Planets Intensity vs. Result')
plt.xlabel('Result')
plt.ylabel('Planets Intensity')
plt.grid(True)
plt.show()

#✅ 4. Rată de victorie pentru fiecare nivel (low, medium, high)

# -Grupare după intensitate discretizată
win_rate_by_level = df_sorted.groupby('intensity_level')['result'].mean()

print("Rata de victorie (proportie de 1) per nivel de intensitate:", flush=True)
print(win_rate_by_level)

#✅ 5. Barplot: rezultat mediu în funcție de nivelul intensității

plt.figure(figsize=(6, 4))
sns.barplot(x=win_rate_by_level.index, y=win_rate_by_level.values)
plt.title('Rată de Victorie în funcție de Planets Intensity (Low/Medium/High)')
plt.ylabel('Proportie Victorii')
plt.xlabel('Nivel Planets-Intensity')
plt.ylim(0, 1)
plt.grid(True)
plt.show()
#####################################################

# testul chi2 pt asocierea intre variabile categorice:
# Pas 1: Discretizarea planets_intensity în 3 niveluri
df_sorted = df_sorted[df_sorted['planets_intensity'] >= 0]  # eliminăm -1, dacă nu ai făcut-o
df_sorted['intensity_level'] = pd.qcut(df_sorted['planets_intensity'], q=3, labels=['low', 'medium', 'high'])

# Pas 2: Contingency table
contingency = pd.crosstab(df_sorted['intensity_level'], df_sorted['result'])
print("Contingency Table:")
print(contingency)

# Pas 3: Testul Chi-pătrat
chi2, p, dof, expected = chi2_contingency(contingency)

# Pas 4: Rezultate
print("\nChi2 Statistic:", chi2)
print("Degrees of Freedom:", dof)
print("Expected Frequencies:\n", expected)
print("P-value:", p)

# Interpretare
if p < 0.05:
    print("\n Exista o asociere semnificativa intre intensitatea-planetelor si rezultat.",Flush=True)
else:
    print("\n Intre intensitatea-planetelor si rezultat NU exista o asociere semnificativa statistic.",flush=True)
