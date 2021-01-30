#/bin/bash
PS3='Enter your choice: '
options=("React JS" "React TS" "React JS Chakra UI" "React TS Chakra UI" "Install vue-cli" "Create Vue App" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "React JS")
            read -p "Enter app name (no-spacing): " name
            npx create-react-app $name
            break
            ;;
        "React TS")
            read -p "Enter app name (no-spacing): " name
            npx create-react-app $name --template typescript
            break
            ;;
        "React JS Chakra UI")
            read -p "Enter app name (no-spacing): " name
            npx create-react-app $name --template @chakra-ui
            break
            ;;
        "React TS Chakra UI")
            read -p "Enter app name (no-spacing): " name
            npx create-react-app $name --template @chakra-ui/typescript
            break
            ;;
        "Install vue-cli")
            npm install -g @vue/cli
            break
            ;;
        "Create Vue App")
            read -p "Enter app name (no-spacing): " name
            vue create $name
            break
            ;;
        "Quit")
            break
            ;;
        *) 
            break 
    esac
done