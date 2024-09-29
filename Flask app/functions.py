from io import BytesIO


def return_file_from_binary(file_data):
    bytesio_object = BytesIO(file_data)
    return bytesio_object.getbuffer()
