import 'react-native';

declare module 'react-native' {
  namespace StyleSheet {
    export function setStyleAttributePreprocessor(
      property: string,
      process: (nextProp: unknown) => unknown
    );
  }
}
