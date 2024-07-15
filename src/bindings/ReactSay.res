// type props = {
//   "pitch": float,
//   "rate": float,
//   "volume": float,
//   "speak": string,
// };

// let makeProps = (
//   ~pitch,
//   ~rate,
//   ~volume,
//   ~speak,
//   ()
// ): props =>
//   {
//     "pitch": pitch,
//     "rate": rate,
//     "volume": volume,
//     "speak": speak
//   };

@module("react-say") @react.component
external make: (
  ~pitch: float,
  ~rate: float,
  ~volume: float,
  ~text: string
) => React.element = "default";