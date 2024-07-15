## CLUP 

### Overview

__Clup__ - Cloud Uploader - is a a bash CLI tool that allows users to quickly upload files to a Azure storage, it provides a seamless upload experience similar to popular storage services.

It is a simple project recommended by GPS on her [Learn to Cloud](https://learntocloud.guide/phase1/) guideline. 


### Features

This script ensures that a file to be uploaded is specified, exists, is readable, and uploads it to Azure Blob Storage using Azure CLI command. It incorporates error handling and colorful terminal output for better user experience and feedback.

It's features include:
 - CLI Argument Parsing
 - File Check
 - Error Handling
 - Upload Feedback


### Usage

If you intend to use or test this script, there are a few things you should do, you should have,
- Azure CLI installed and Azure account with subscription configured on your CLI
- An Azure storage account created in your subscription

Additionally, you can add the script to your path as an executable on your machine: 
- Copy the file to `usr/local/bin`. You might need sudo for this
- Change the file permission using `chmod 755 clup.sh`
- Rename the file `mv clup.sh clup`. This ensures you do not have to include the extension when running it
Now you can run the script from anywhere on your machine using `clup <path_to_file> <storage_account_name> <container_name>`


### Possible improvements

While this scripts works, there are certain ways that it can be improved to ensure more security, optimal perfomance and better user experience. The possible ways this can be improved are.

__Parameter Validation Improvement:__
Currently, the script checks if ACCOUNT_NAME and CONTAINER_NAME are empty but could benefit from more robust validation (e.g., checking if they contain valid Azure storage account and container names).

__Enhanced Error Handling:__
Implement more detailed error messages or logging for different failure scenarios during file validation or upload.

__Support for Azure Storage Account SAS Tokens:__
Extend the script to support Azure Storage Account SAS tokens for enhanced security and flexibility in accessing 
Azure Blob Storage.

__Interactive Mode:__
Provide an interactive mode or prompt users for missing parameters to improve usability and prevent errors due to missing command-line arguments.

__Security Considerations:__
Ensure sensitive information (like Azure storage account keys or SAS tokens) is handled securely, possibly by using environment variables or secure input methods.

__Testing and Validation:__
Test the script thoroughly with various file types, sizes, and network conditions to ensure robustness and reliability.

__Logging and Verbosity:__
Add options for logging different levels of detail, from basic progress messages to verbose output for troubleshooting.

Feel free to add ways that the script can be improved and inputs if you come accross any issues with using the script.