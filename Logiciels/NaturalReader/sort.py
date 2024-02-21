import json
import sys


def sort_json(filename):
    with open(filename, 'r', encoding='utf-8') as file:
        data = json.load(file)

    sorted_data = sorted(data, key=lambda x: x['source'])

    with open(filename, 'w', encoding='utf-8') as file:
        json.dump(sorted_data, file, ensure_ascii=False, indent=3)

    print(f"Le fichier {filename} a été trié avec succès.")


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python sort.py <exportPronunciations_XX.json>")
        sys.exit(1)

    filenames = sys.argv[1:]

    for filename in filenames:
        sort_json(filename)