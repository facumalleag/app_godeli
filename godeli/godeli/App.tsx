/* import React from 'react';
import Login from './src/Login';

export default function App() {
  return (

  <Login/>

  );
} */

import { NavigationContainer } from '@react-navigation/native';
import * as React from 'react';
import { StackNaviagtor } from './navigator/StackNavigator';
import Login from './src/Login';

function App() {
  return (
    <NavigationContainer>
      <StackNaviagtor />
    </NavigationContainer>
  );
}

export default App;