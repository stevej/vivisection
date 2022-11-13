const FNV_PRIME_64 : u64 = 1099511628211u64;
const FNV_OFFSET_64 : u64 = 14695981039346656037u64;

pub fn fnv1a(bytes: Vec<u8>) -> u64 {
  let mut hash = FNV_OFFSET_64;

  for b in bytes.iter() {
    hash ^= *b as u64;
    hash *= FNV_PRIME_64;
  }

  return hash;
}

#[cfg(test)]
mod tests {
    #[test]
    fn it_works() {
        assert(true)
    }
}
