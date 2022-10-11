

#!/bin/bash

base_dir="foundARTS"

# Going to each folder of the given directory
for folder in $base_dir/*
do
    echo -e "-------------------------------------------------\nChecking FOLDER : $folder\n-------------------------------------------------"
    # Setting counter to 1
    i=1
    # Looping over each image in the folder
    for image_path in $folder/*
    do
        # Computing new image name using the counter
        new_image_name="$i.jpg"
        #new_image_name+="w.jpg"

        if ! [[ -f "$folder/$new_image_name" ]]
        then
            # Printing the message
            echo "Changing $image_path to $folder/$new_image_name"
            # Renaming the file
            mv "$image_path" "$folder/$new_image_name"
        fi
        # Incrementing the counter
        i=$(($i+1))
    done

done