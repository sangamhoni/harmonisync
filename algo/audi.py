import subprocess
import os
from pdf2image import convert_from_path


def convert_pdf_to_png(pdf_path, output_dir):
    # Check if the file is a PDF
    if not pdf_path.lower().endswith(".pdf"):
        print("The provided file is not a PDF.")
        return []

    # Create the output directory if it does not exist
    os.makedirs(output_dir, exist_ok=True)

    png_paths = []  # List to store the paths of the saved PNG files

    try:
        # Convert PDF to images (one image per page)
        images = convert_from_path(pdf_path)

        # Save each image as a PNG file
        for i, image in enumerate(images):
            png_path = os.path.join(output_dir, f"page_{i + 1}.png")
            image.save(png_path, "PNG")
            png_paths.append(png_path)  # Add the path to the list

        print("PDF conversion to PNG completed successfully.")
        return png_paths  # Return the list of PNG paths

    except Exception as e:
        print(f"An error occurred during conversion: {e}")
        return []


# Example usage
# paths = convert_pdf_to_png('/path/to/your/file.pdf', '/path/to/output/directory')
# print(paths)  # This will print the list of PNG paths
def convert_image_to_musicxml(image_paths, output_dir):
    audiveris_path = (
        "/Users/tao-taohe/audiveris/audiveris/build/distributions/Audiveris-5.3.1/bin"
    )

    # Check if the file is a PDF
    if image_paths.lower() == ".pdf":
        # Convert PDF to PNG and update image_paths
        image_paths = convert_pdf_to_png(image_path, "/test")

    # Ensure image_paths is a list
    if isinstance(image_paths, str):  # If a single image path is given
        image_paths = [image_paths]

    for image_path in image_paths:

        # Iterate through each image path (in case of multiple pages)
        for image in image_paths:
            # Create the command with the output directory specified
            command = [
                os.path.join(audiveris_path, "audiveris"),
                "-export",
                image,
                "-output",
                output_dir,
            ]

            try:
                # Run the command
                subprocess.run(command, check=True)
                print(f"Audiveris has successfully processed the file: {image}")

                # Check for the output file
                output_file = os.path.join(
                    output_dir, os.path.basename(image).replace(".png", ".musicxml")
                )
                if os.path.exists(output_file):
                    print(f"Output file created: {output_file}")
                    return output_file
                else:
                    print("Output file not found.")

            except subprocess.CalledProcessError as e:
                print(f"An error occurred while processing {image}: {e}")


# convert_image_to_musicxml(
#     "/Users/tao-taohe/Desktop/harmoniSync/algorithm/data/testaudiveris-1.png",
#     "/Users/tao-taohe/Desktop/harmoniSync/algorithm/temp",
# )
