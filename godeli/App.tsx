import { NavigationContainer } from '@react-navigation/native';
import * as React from 'react';
import { StackNaviagtor } from './navigator/StackNavigator';
import { Provider } from 'react-redux';
import store from './redux/Store';

const GodeliApp = () => {
  return (
    <NavigationContainer>
      <StackNaviagtor />
    </NavigationContainer>
  )

}


function App() {
  return (
    <Provider store={store}>
      <GodeliApp/>
    </Provider>

  );
}

export default App;