use crate::Sign;

/// $$+\frac{1}{2}\sqrt{2+\sqrt{2+\sqrt{2}}}$$
#[derive(Copy, Clone, Debug, Default)]
pub struct Cos16 {
    sign: [Sign; 3],
}


impl Cos16 {
    fn format(&self) -> String {
        let norm = n % 32;
        match norm {
            n if n % 2 == 0 => {
                unimplemented!()
            }
            n if n > 16 {}
            _ => unreachable!()
        }
    }

    fn format_sign(&self) -> String {
        format!(
            "{s1}\\frac{{1}}{{2}}\\sqrt{{2{s2}\\sqrt{{2{s3}\\sqrt{{2}}}}}}",
            s1 = self.sign[0],
            s2 = self.sign[1],
            s3 = self.sign[2]
        )
    }
}

#[test]
fn test() {
    println!("{}", Cos16::default().format_sign(Sign::Positive, Sign::Positive, Sign::Positive))
}