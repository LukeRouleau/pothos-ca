#!/bin/bash

# Test runner script for pothos-ca project
# Runs all test commands from package.json

set -e  # Exit on any error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to print colored output
print_step() {
    echo -e "${BLUE}🔄 $1${NC}"
}

print_success() {
    echo -e "${GREEN}✅ $1${NC}"
}

print_error() {
    echo -e "${RED}❌ $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}⚠️  $1${NC}"
}

# Function to run command with error handling
run_command() {
    local cmd="$1"
    local description="$2"
    
    print_step "Running: $description"
    echo -e "${YELLOW}Command: $cmd${NC}"
    
    if eval "$cmd"; then
        print_success "$description completed successfully"
        echo
    else
        print_error "$description failed"
        exit 1
    fi
}

# Main execution
echo -e "${BLUE}🚀 Starting comprehensive test suite for pothos-ca${NC}"
echo "=================================================="
echo

# Step 1: Format code
run_command "npm run format" "Code formatting"

# Step 2: Lint code
run_command "npm run lint" "Code linting"

# Step 3: SvelteKit sync and type checking
run_command "npm run check" "SvelteKit sync and type checking"

# Step 4: Run unit tests
run_command "npm run test" "Unit tests"

# All tests passed
echo -e "${GREEN}🎉 All tests completed successfully!${NC}"
echo -e "${GREEN}✨ Your code is ready for deployment${NC}"