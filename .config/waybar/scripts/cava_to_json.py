#!/usr/bin/env python
import json
import sys

def process_cava_output():
    raw_output = sys.stdin.readline().strip()
    if raw_output:
        bars = [int(val) for val in raw_output.split(';')]
        max_height = 10 # adjust to your waybar height
        normalized_bars = ['█' * int(bar * max_height / 100) for bar in bars]
        print(json.dumps(normalized_bars))

if __name__ == "__main__":
    process_cava_output()
