use std::fmt::{Debug, Display, Formatter, Write};
use std::ops::Neg;

#[derive(Copy, Clone, Debug)]
pub enum Sign {
    None,
    Positive,
    Negative,
    Custom(&'static str),
}

impl Default for Sign {
    fn default() -> Self {
        Sign::None
    }
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

impl From<i8> for Sign {
    fn from(v: i8) -> Self {
        match v {
            n if n > 0 => { Sign::Positive }
            n if n < 0 => { Sign::Negative },
            _=> Sign::None
        }
    }
}

impl Sign {
    pub fn new(v: impl Into<Sign>) -> Self {
        v.into()
    }
    pub fn flip(&mut self) {
        match self {
            Sign::Positive => { *self = Sign::Negative }
            Sign::Negative => { *self = Sign::Positive }
            _ => {}
        }
    }
}

impl Neg for Sign {
    type Output = Self;

    fn neg(self) -> Self::Output {
        match self {
            Sign::Positive => { Sign::Negative }
            Sign::Negative => { Sign::Positive }
            _ => self
        }
    }
}