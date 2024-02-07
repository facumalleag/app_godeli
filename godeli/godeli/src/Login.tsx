import React, { useEffect } from 'react';
import { StyleSheet, View, ImageBackground, Image, Text, TouchableOpacity } from 'react-native';
import NetworkController from '../controller/NetworkController';



export default function Login() {
  useEffect(() => {
    const checkConnection = async () => {
      const isConnected = await NetworkController.checkInternetConnection();
      if (!isConnected) {
        console.log('No hay conexión a Internet');
      } else {
        console.log('Conexión a Internet establecida');
      }
    };

    checkConnection();
  }, []);
  
  return (
    <View style={styles.container}>
      <ImageBackground source={require('../assets/background.png')} style={styles.backgroundImage} >
        <View style={styles.logoContainer}>
          <Image source={require('../assets/logo.png')} style={styles.logo} />
        </View>
        <View style={{alignSelf:'center', marginRight:40}}>
          <Text style={styles.greetingText}>Hola,</Text>
          <Text style={styles.welcomeText}>Genial verte de nuevo!</Text>
        </View>
        <TouchableOpacity style={styles.googleButton}>
          <Text style={styles.buttonText}>Iniciar sesión con Google</Text>
        </TouchableOpacity>
      </ImageBackground>
    </View>
  );
}

const styles = StyleSheet.create({
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
    width: 300,
    height: 300,
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