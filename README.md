### Abstract
This small application illustrates the problem with Decimal type properties and data binding to TextField object instances.
The values are not written back to the property when leaving the input field or clicking Enter.

## Question
How must the code be adapted so that the two-way data binding works for properties of type Decimal?

## How to run this example app?
- Xcode version: 13.0 beta 4 (13A5201i) or newer
- Set the team in the Xcode project: 
  Project > Target "TextFieldWithOptionalDecimalValueType" > Signing & Capabilities > Team > Choose a Team.
- Run the project

## Recording
Video recording of a failed input. When the second input field loses focus, the newly entered data is not applied, but the original data is displayed again. Therefore I suspect a problem with the data binding.
![recording of this app](https://i.stack.imgur.com/4huHT.gif)
