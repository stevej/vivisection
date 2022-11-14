const FNV_PRIME_64: u64 = 1099511628211u64;
const FNV_OFFSET_64: u64 = 14695981039346656037u64;

pub fn fnv1a(bytes: Vec<u8>) -> u64 {
    let mut hash: u64 = FNV_OFFSET_64;

    for b in bytes.iter() {
        hash ^= *b as u64;
        hash = hash.wrapping_mul(FNV_PRIME_64);
    }

    hash
}

#[cfg(test)]
mod tests {
    use crate::fnv1a::fnv1a;
    #[test]
    fn empty() {
        assert_eq!(fnv1a(vec![]), 14695981039346656037);
    }

    #[test]
    fn lots_of_tests() {
        assert_eq!(fnv1a(vec![0x0]), 12638153115695167455);
        assert_eq!(fnv1a(vec![0x1, 0x2, 0x3, 0x4]), 13725386680924731485);
    }
}
