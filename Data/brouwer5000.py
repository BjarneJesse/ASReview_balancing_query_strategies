import pandas as pd
import csv

# Step 1: Load the dataset
df = pd.read_csv("Brouwer_2019.csv", encoding='utf-8')

# Select 38 articles with label_included = 1
relevant_sample = df[df['label_included'] == 1].sample(n=38, random_state=28)

# Select remaining articles with label_included = 0 to make up 5000 records
num_irrelevant_samples = 5000 - len(relevant_sample)
irrelevant_sample = df[df['label_included'] == 0].sample(n=num_irrelevant_samples, random_state=42)

# Combine relevant and irrelevant samples
final_dataset = pd.concat([relevant_sample, irrelevant_sample])

# Save the final dataset with correct formatting
final_dataset.to_csv(r'final_dataset.csv', index=False, quoting=csv.QUOTE_MINIMAL, encoding='utf-8')
