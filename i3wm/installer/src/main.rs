
use std::env;
use std::path::PathBuf;
use std::fs;

#[derive(Debug)]
struct Pathing {
    origin: PathBuf,
    destination: PathBuf,
    filename: String,
}


fn main() {
    let user = match env::var("USER") {
        Ok(i) => i,
        Err(_) => panic!("Couldn't retrieve $USER environment variable"),
    };
    
    let pathing_list: [Pathing; 4] = [
        get_pathing("polybar.conf", &format!("/home/{}/.config/polybar/", user), String::from("config")),
        get_pathing("nvim.conf",  &format!("/home/{}/.config/nvim/", user), String::from("init.vim")),
        get_pathing("kitty.conf",  &format!("/home/{}/.config/kitty/", user), String::from("kitty.conf")),
        get_pathing("i3.conf",  &format!("/home/{}/.config/i3/", user), String::from("config")),

    ];

    install_config_files(&pathing_list);
}

fn install_config_files(pathings: &[Pathing]) {
    for (_, item) in pathings.into_iter().enumerate() {
        println!("Creating {}@{}", item.origin.display(), item.destination.display());
        match fs::create_dir_all(&item.destination){
            Err(e) => panic!("Failed to create destination folders. Likely due to a lack of permission\n message: {:?}", e),
            _ => (),
        };
        match fs::copy(&item.origin, format!("{}{}", &item.destination.display(), &item.filename)) {
            Err(e) => panic!("Failed to copy files. Likely due to a lack of permission\n message: {:?}", e),
            _ => (),
        };
    }
}

fn get_pathing(file: &str, destination: &str, filename: String) -> Pathing {
    let mut folder = match env::current_dir() {
        Ok(i) => i,
        Err(_) => panic!("Could not find current directory. You might need permissions or folder is unavailable"),
    };
    folder.push(file);
    
    Pathing {
        origin: folder,
        destination: PathBuf::from(destination),
        filename: filename,
    }
}
