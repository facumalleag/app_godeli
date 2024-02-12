import React from 'react'

import HomeScreen from '../screens/HomeScreen';
import { createNativeStackNavigator } from '@react-navigation/native-stack';
import Login from '../src/Login';
import { TabNavigator } from '../navigator/TabNavigator';
import ProfileScreen from '../screens/ProfileScreen';

export type RootStackParams = {
  HomeScreen: undefined,
  TabNavigator:undefined,
  Login:undefined,
  ProfileScreen:undefined
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
      <Stack.Screen name="TabNavigator" component={TabNavigator} />
      <Stack.Screen name="ProfileScreen" component={ProfileScreen}  />
    </Stack.Navigator>
  );
}