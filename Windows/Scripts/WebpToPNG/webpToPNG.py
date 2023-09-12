from PIL import Image
from pillow_heif import register_heif_opener
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
        register_heif_opener()
        convert(file_path)