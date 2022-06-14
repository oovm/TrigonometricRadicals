use std::fmt::{Debug, Display, Formatter, Write};

#[derive(Copy, Clone, Default, Debug)]
pub enum Sign {
    None,
    Positive,
    Negative,
    Custom(&'static str),
}

impl Display for Sign {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        match self {
            Sign::None => { f.write_str("") }
            Sign::Positive => { f.write_char('+') }
            Sign::Negative => { f.write_char('-') }
            Sign::Custom(s) => { f.write_str(s) }
        }
    }
}

impl From<bool> for Sign {
    fn from(v: bool) -> Self {
        match v {
            true => { Sign::Positive }
            false => { Sign::Negative }
        }
    }
}

impl Sign {
    pub fn new(v: impl Into<Sign>) -> Self {
        v.into()
    }
}