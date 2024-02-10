import { NavigationContainer } from '@react-navigation/native';
import * as React from 'react';
import { StackNaviagtor } from './navigator/StackNavigator';

function App() {
  return (
    <NavigationContainer>
      <StackNaviagtor />
    </NavigationContainer>
  );
}

export default App;