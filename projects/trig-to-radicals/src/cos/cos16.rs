/// $$+\frac{1}{2}\sqrt{2+\sqrt{2+\sqrt{2}}}$$
#[derive(Copy, Clone, Debug, Default)]
pub struct Cos16 {}


impl Cos16 {




    fn format_sign(&self, s1: &str, s2: &str, s3: &str) -> String {
        format!("{s1}\\frac{{1}}{{2}}\\sqrt{{2{s2}\\sqrt{{2{s3}\\sqrt{{2}}}}}}")
    }
}

#[test]
fn test() {
    println!("{}", Cos16::default().format_sign("+", "-", "-"))
}