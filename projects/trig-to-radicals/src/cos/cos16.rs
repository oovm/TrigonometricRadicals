use std::fmt::{Display, Formatter};
use crate::Sign;

/// $$+\frac{1}{2}\sqrt{2+\sqrt{2+\sqrt{2}}}$$
#[derive(Copy, Clone, Debug, Default)]
pub struct CosPower2 {
    sign: [Sign; 3],
}

impl CosPower2 {
    pub fn gray_code(n: i32) -> Vec<i32> {
        // G(n) = n xor (n>>1)
        (0..1 << n).map(|e| e ^ (e >> 1)).collect()
    }
}

impl CosPower2 {
    pub fn new<T: Into<Sign>>(s0: T, s1: T, s2: T) -> Self {
        Self {
            sign: [s0.into(), s1.into(), s2.into()]
        }
    }
    fn flip(&mut self) {
        self.sign[0].flip()
    }
}

impl Display for CosPower2 {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        write!(
            f,
            "{s0}\\frac{{1}}{{2}}\\sqrt{{2{s1}\\sqrt{{2{s2}\\sqrt{{2}}}}}}",
            s0 = self.sign[0],
            s1 = self.sign[1],
            s2 = self.sign[2],
        )
    }
}

#[test]
fn test() {
    let cos = CosPower2::gray_code(5);
    println!("{:?}", cos)
}