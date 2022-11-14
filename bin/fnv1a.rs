use std::env;
use std::fs;
use std::fs::File;
use std::io::Read;
use vivisection::fnv1a::fnv1a;

fn get_file_as_byte_vec(filename: &String) -> Vec<u8> {
    let mut f = File::open(&filename).expect("file not found");
    let metadata = fs::metadata(&filename).expect("unable to read metadata");
    let mut buffer = vec![0; metadata.len() as usize];
    f.read_exact(&mut buffer).expect("buffer overflow");

    buffer
}

fn main() {
    let args: Vec<String> = env::args().collect();
    let filename = &args[1];
    let bytes = get_file_as_byte_vec(filename);
    let hash = fnv1a(bytes);
    println!("{:#X}", hash);
}
