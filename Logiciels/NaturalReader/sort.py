import json
import sys

if len(sys.argv) != 2:
    print("Usage: python sort.py <exportPronunciations_XX.json>")
    sys.exit(1)

filename = sys.argv[1]

# Lire le fichier JSON
with open(filename, 'r', encoding='utf-8') as file:
    data = json.load(file)

# Trier les éléments par ordre alphabétique en fonction de la clé "source"
sorted_data = sorted(data, key=lambda x: x['source'])

# Écrire le résultat trié dans un nouveau fichier JSON
with open(filename, 'w', encoding='utf-8') as file:
    json.dump(sorted_data, file, ensure_ascii=False, indent=3)

print(f"Le fichier {filename} a été trié avec succès.")