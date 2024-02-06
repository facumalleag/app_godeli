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
        <ImageBackground source={require('../assets/background.png')} style={styles.backgroundImage}>
        <View style={styles.logoContainer}>
          <Image source={require('../assets/logo.png')} style={styles.logo} />
      </View>
        <Text style={styles.greetingText}>Hola,</Text>
        <Text style={styles.welcomeText}>Genial verte de nuevo!</Text>
        <TouchableOpacity style={styles.googleButton}>
          <Text style={styles.buttonText}>Iniciar sesión con Google</Text>
        </TouchableOpacity>
      </ImageBackground>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {

    justifyContent: 'center',
    alignItems: 'center',
  },
  backgroundImage: {
    width: '100%',
    justifyContent: 'center',
    alignItems: 'center',
  },
  logoContainer: {
    marginBottom: 30,
  },
  logo: {
    width: 150,
    height: 150,
  },
  greetingText: {
    color: '#129575',
    fontSize: 24,
    marginBottom: 10,
  },
  welcomeText: {
    fontSize: 18,
    marginBottom: 30,
  },
  googleButton: {
    backgroundColor: 'white',
    paddingHorizontal: 20,
    paddingVertical: 10,
    borderRadius: 20,
  },
  buttonText: {
    color: 'black',
    fontSize: 16,
  },
});