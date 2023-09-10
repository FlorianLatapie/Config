from PIL import Image
import os

def convert(filepath):
    im = Image.open(filepath)
    im.save(os.path.basename(filepath).split(".")[0] + ".png", "PNG")


if __name__ == "__main__":
    import sys

    if len(sys.argv) < 2:
        print("Usage: python webptoPNG.py <input_path(s)>")
        sys.exit(1)

    for file_path in sys.argv[1:]:
        convert(file_path)