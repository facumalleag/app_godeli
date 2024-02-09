import React from 'react'
import { StyleSheet } from 'react-native';

export const styles = StyleSheet.create({
    container: {
      flexDirection:'column'
    },
  
    backgroundImage: {
      width: '100%',
      height: '100%',
    },
    logoContainer: {
      marginTop:30,
      alignItems: 'center',
    },
    logo: {
      width: 250,
      height: 250,
    },
    greetingText: {
      justifyContent: 'center',
      fontWeight:'500',
      color: '#129575',
      fontSize: 30,
    },
    welcomeText: {
      color:'white',
      fontSize: 22,
    },
    googleButton: {
      marginLeft:'13%',
      marginTop:100,
      backgroundColor: 'white',
      width: 300,
      height: 50,
      borderRadius: 20,
    },
    buttonText: {
      alignSelf:'center',
      marginTop:'4%',
      color: 'black',
      fontSize: 16,
    },
  });