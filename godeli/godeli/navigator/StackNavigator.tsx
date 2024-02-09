import React from 'react'

import HomeScreen from '../screens/HomeScreen';
import { createNativeStackNavigator } from '@react-navigation/native-stack';
import Login from '../src/Login';

export type RootStackParams = {
  HomeScreen: undefined,
  Login:undefined,
}

const Stack = createNativeStackNavigator<RootStackParams>();

export const  StackNaviagtor=() =>{
  return (
    <Stack.Navigator
      initialRouteName='Login'
       screenOptions={{
        headerShown:false,
        
      }}
    >
      <Stack.Screen name="HomeScreen" component={HomeScreen} />
      <Stack.Screen name="Login" component={Login} />
    </Stack.Navigator>
  );
}