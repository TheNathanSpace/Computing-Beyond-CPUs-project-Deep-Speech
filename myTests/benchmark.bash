#!/bin/bash

pip install psutil

echo "Enter device identifier: "
read device_id

if python -c "import torch; print(torch.cuda.is_available())" | grep -q "True"; then
    device="gpu"
else
    device="cpu"
fi

echo "Device identified: ${device}"
echo "Device identifier: ${device_id}"
echo "Starting ./Deepspeech2 script in background..."
echo "-------"

# Loop through batch sizes from 1 to 12
for batch_size in {1..12}; do
    echo "Running with batch size: ${batch_size}"

    output_file="${device_id}_${batch_size}_output.txt"
    echo "" > $output_file
    echo "Output file: ${output_file}"

    # Run the Deepspeech2 script in the background
    ./Deepspeech2 $batch_size > "${output_file}" 2>&1 &

    # Monitor the output
    tail -f "${output_file}" | while read -r line; do
        echo "$line"
        if [[ "$line" == *"Finished. Exiting."* ]]; then
            break
        fi
    done

    git add --all
    git commit -m "push ${output_file}"
    git push

    echo "-------"
done

echo "Benchmarking complete."
