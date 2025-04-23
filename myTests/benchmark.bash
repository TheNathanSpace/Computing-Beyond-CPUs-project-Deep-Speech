#!/bin/bash

if python -c "import torch; print(torch.cuda.is_available())" | grep -q "True"; then
    device="gpu"
else
    device="cpu"
fi

output_file="${device}_output.txt"

echo "Device identified: ${device}"
echo "Output file set to: ${output_file}"
echo "" > $output_file
echo "Starting ./Deepspeech2 script in background..."
echo "-------"

./Deepspeech2 > "${output_file}" 2>&1 &

tail -f "${output_file}" | while read -r line; do
    echo "$line"
    if [[ "$line" == *"Peak memory"* ]]; then
        break
    fi
done

echo "-------"
echo "Benchmarking complete."
echo "Output file: ${output_file}"

