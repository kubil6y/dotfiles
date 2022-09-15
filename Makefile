init: clean
	@echo "Initialized folder structure!"
	@mkdir vscode

clean:
	@rm -rf ./vscode
	@rm -f ./.bashrc
	@rm -f ./.tmux.conf
	@rm -f ./alacritty.yml
	@rm -rf  ./nvim
	@rm -f ./.gitconfig
	@echo "Cleaned dotfiles!"

get_files: init
	@cp ~/.bashrc .
	@cp ~/.tmux.conf .
	@cp ~/.config/alacritty/alacritty.yml .
	@cp ~/.gitconfig .
	@cp -r ~/.config/nvim .
	@cp ~/.config/Code/User/keybindings.json ./vscode/
	@cp ~/.config/Code/User/settings.json ./vscode/
	@code --list-extensions > ./vscode/extensions
	@echo "Copying files done!"

update_nvim_settings:
	@rm -rf ./nvim
	@cp -r ~/.config/nvim .
	@echo "Updated nvim settings!"

update_vscode_settings:
	@rm -rf ./vscode/
	@mkdir vscode
	@cp ~/.config/Code/User/keybindings.json ./vscode/
	@cp ~/.config/Code/User/settings.json ./vscode/
	@code --list-extensions > ./vscode/extensions
	@echo "Updated vscode settings!"

# set_files:
# 	@echo "Setting dotfiles files..."
# 	@cp ./.bashrc ~/.bashrc
# 	@cp ./.tmux.conf ~/.tmux.conf
# 	@cp ./alacritty.yml ~/.config/alacritty/alacritty.yml
# 	@cp -r ./nvim ~/.config/
# 	@cp ./.gitconfig ~/.gitconfig
# 	@cp ./vscode/keybindings.json ~/.config/Code/User/keybindings.json
# 	@cp ./vscode/settings.json ~/.config/Code/User/settings.json.json
#  	@echo "Setting dotfiles files done!"
