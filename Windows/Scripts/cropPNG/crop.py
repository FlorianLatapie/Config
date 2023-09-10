from PIL import Image
import numpy as np

def crop_blank_pixels(input_path, output_path=None):
    if output_path is None:
        output_path = input_path
    
    image = Image.open(input_path)

    non_blank_pixels = np.array(image)[:, :, 3] != 0

    rows, cols = non_blank_pixels.nonzero()

    left = np.min(cols)
    top = np.min(rows)

    right = np.max(cols) + 1
    bottom = np.max(rows) + 1

    cropping_box = (left, top, right, bottom)

    cropped_image = image.crop(cropping_box)

    cropped_image.save(output_path)


if __name__ == "__main__":
    import sys

    if len(sys.argv) < 2:
        print("Usage: python crop.py <input_path(s)>")
        sys.exit(1)

    for file_path in sys.argv[1:]:
        crop_blank_pixels(file_path)
