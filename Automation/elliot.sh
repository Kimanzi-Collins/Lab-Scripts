#!/bin/bash
#I'm Walter O'Brien. I have an IQ of 197....
#Einstein's was 160. I have a photographic memory. I can recall anything I've ever seen or heard with perfect clarity. I can read 1,000 pages in an hour. I can solve complex mathematical problems in seconds. I can hack into any computer system in the world. I can predict the future with incredible accuracy. I can manipulate people and situations to my advantage. I can create advanced technology that doesn't exist yet. I can think faster than anyone else on the planet. 
#I can do all of this and more, but I'm not a superhero
#Scorpion Episode 1: Pilot
# To run: chmod +x your_script.sh .....sudo ./your_script.sh

cyber_loader() {
    local message="$1"
    local bar=""
    local spinner=( '|' '/' '-' '\' )
    
    # Loop 20 times (20 blocks * 5% = 100%)
    for i in {1..20}; do
        # Add a block to the bar
        bar="${bar}█"
        
        # Pick the right spinner frame
        local spin=${spinner[$((i % 4))]}
        
        # Print the perfectly formatted line
        printf "\r\e[31m[%s] [%-20s] %d%% | %s\e[0m" "$spin" "$bar" "$((i * 5))" "$message"
        
        # Pause for a fraction of a second
        sleep 0.1
    done
    
    # Drop down one empty line when finished
    echo "" 
}
echo -e "\e[32m"
cat << "EOF"
#########################################################################
#                                                                       #
#    ▄██████▄   ▄█    █▄    ▄██████▄     ▄████████  ███▄▄▄▄   ███       #
#   ███    ███ ███    ███  ███    ███   ███    ███  ███▀▀▀██▄ ███       #
#   ███    █▀  ███    ███  ███    ███   ███    █▀   ███   ███ ███       #
#  ▄███        ███    ███  ███    ███  ▄███         ███   ███ ███       #
# ▀▀███ ████▄  ███    ███  ███    ███ ▀▀█████████▄  ███   ███ ███       #
#   ███    ███ ███    ███  ███    ███          ███  ███   ███ ███       #
#   ███    ███ ███    ███  ███    ███    ▄█    ███  ███   ███ ███▌    ▄ #
#   ████████▀   ▀██████▀    ▀██████▀   ▄████████▀    ▀█   █▀  █████▄▄██ #
#                                                                       #
#=======================================================================#
#                         C O L L I N S   K I M A N Z I                 #
#########################################################################
EOF
echo -e "\e[0m"
LOG_FILE="/home/kali/script_log.txt"
echo -e "\e[0m"
echo "Welcome reader, I am Elliot, a script designed to automate tasks and enhance your productivity;"
echo "Tip: Run this script with root privileges to ensure all tasks can be executed successfully."
echo "PS: All actions performed by this script will be logged in $LOG_FILE for your reference."


while true; do
    echo "Here's what you can do ninja:"
    echo "1. System Maintenance (Check disk usage and delete logs older than 7 days)"
    echo "2. Update System (Update package lists and upgrade installed packages)"
    echo "3. Move files (Move files from one directory to another)"
    echo "4. Clean Up (Remove temporary files and clear cache)"
    echo "5. Backup (Create a backup of important files with a time stamp)"
    echo "6. Exit"
    echo "------------------------------------------------------------------------------------------------------------------------"
    read -p "Enter your choice (1-6): " user_choice
    
    case $user_choice in
        1)
            echo "--------------------------------------------------"
            cyber_loader "Sanitizing file system and purging obsolete logs..."
            echo "$(date): System Maintenance initiated." >> "$LOG_FILE"
            echo "Disk Usage:"
            df -h
            echo "Deleting logs older than 7 days..."
            find /var/log -type f -name "*.log" -mtime +7 -delete
            echo "Logs older than 7 days have been deleted."
            echo "$(date): System Maintenance completed." >> "$LOG_FILE"
            ;;
        
        2)
            echo "--------------------------------------------------"
            cyber_loader "Upgrading system architecture and fetching payloads..."
            echo "$(date): System update initiated." >> "$LOG_FILE"
            echo "System will reboot soon. Please save your work."
            sudo apt update && sudo apt upgrade -y
            echo "System update completed. Rebooting now..."
            echo "$(date): System update completed." >> "$LOG_FILE"
            ;;
        
        3)
            echo "--------------------------------------------------"
            cyber_loader "Rerouting data streams to designated sector..."
            echo "$(date): File move operation initiated." >> "$LOG_FILE"
            read -p "Enter the file type you want to move (e.g., *.txt): " file_type
            read -p "Enter the source directory: " source_dir
            read -p "Enter the destination directory: " dest_dir
            if [ -d "$source_dir" ] && [ -d "$dest_dir" ]; then
                mv "$source_dir"/$file_type "$dest_dir"
                echo "Files of type $file_type have been moved from $source_dir to $dest_dir."
                echo "$(date): File move operation completed." >> "$LOG_FILE"
            else
                echo "Invalid source or destination directory. Please check the paths and try again."
            fi
            ;;
        
        4)
            echo "--------------------------------------------------"
            cyber_loader "Scrubbing temporary footprint and zeroing cache..."
            echo "$(date): Cleanup operation initiated." >> "$LOG_FILE"
            sudo rm -rf /tmp/*
            sudo apt clean
            echo "Temporary files and cache have been cleared."
            echo "$(date): Cleanup operation completed." >> "$LOG_FILE"
            ;;
        
        5)
            echo "--------------------------------------------------"
            cyber_loader "Compressing and archiving target directory..."
            echo "$(date): Backup operation initiated." >> "$LOG_FILE"
            read -p "Enter the directory you want to back up: " backup_dir
            read -p "Enter the destination directory for the backup: " backup_dest
            if [ -d "$backup_dir" ] && [ -d "$backup_dest" ]; then
                timestamp=$(date +%Y%m%d_%H%M%S)
                backup_file="$backup_dest/backup_$timestamp.tar.gz"
                tar -czf "$backup_file" -C "$backup_dir" .
                echo "Backup of $backup_dir has been created at $backup_file."
                echo "$(date): Backup operation completed." >> "$LOG_FILE"
            else
                echo "Invalid backup or destination directory. Please check the paths and try again."
            fi
            ;;
        6)
            echo "--------------------------------------------------"
            echo "Terminating active session. Disconnecting!"
            exit 0
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 6."
            ;;
    esac
done

# THIS IS MY FIRST SCRIPT
# REALLY PROUD OF MYSELF. I'VE LEARNT A LOT ABOUT BASH SCRIPTING AND AUTOMATION. I HOPE THIS SCRIPT WILL HELP OTHERS IN THEIR DAILY TASKS.
# ~Gh0stNode