#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <device_id> <batch_size>"
    exit 1
fi
device_id=$1
batch_size=$2

pip install psutil

if python -c "import torch; print(torch.cuda.is_available())" | grep -q "True"; then
    device="gpu"
else
    device="cpu"
fi

echo "Device identified: ${device}"
echo "Device name: ${device_id}"
echo "Starting ./Deepspeech2 script in background..."
echo "-------"

echo "Running with batch size: ${batch_size}"

output_file="output/${device_id}_${batch_size}_output.txt"
echo "" > $output_file
echo "Output file: ${output_file}"

# Run the Deepspeech2 script in the background
python -u ./Deepspeech2 $batch_size > "${output_file}" 2>&1 &

# Monitor the output
tail -f "${output_file}" | while read -r line; do
    echo "$line"
    if [[ "$line" == *"Finished. Exiting."* ]]; then
        break
    fi
done

git pull
git add --all
git commit -m "push ${output_file}"
git push

echo "-------"

echo "Benchmarking complete."
