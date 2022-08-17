pub use crate::prelude::*;

#[derive(Clone, Copy, Debug, PartialEq)]

pub struct Render {
    pub color : ColorPair, // a helper class from bracket-lib that stores both a foreground and background color in a single struct.
    pub glyph : FontCharType // defined in bracket-lib to store a single character or glyph.
}

#[derive(Clone, Copy, Debug, PartialEq)]   
pub struct Player; // an empty struct containing no data. It serves as a “tag” indicating that an entity with this component is the player.

#[derive(Clone, Copy, Debug, PartialEq)]   
pub struct Enemy; 

