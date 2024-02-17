import React, { useEffect } from 'react';
import { View, ImageBackground, Image, Text, TouchableOpacity, Pressable } from 'react-native';
import NetworkController from '../controller/NetworkController';
import { styles } from '../theme/LandingStyle';
import InternetAlert from '../components/InternetAlert';
import { Link } from 'expo-router';




export default function Login() {
    useEffect(() => {
    const checkConnection =  async () => {
      const isConnected = await NetworkController.checkInternetConnection();
      const type = await NetworkController.checkInternetConnection();
      if (!isConnected) {
        console.log('Sin internet'),
        <InternetAlert titulo='Sin conexión a internet' texto='Comprueba tu conexión a Wi-Fi o datos móviles' />
      } else {
        if (type!.includes("CELLULAR")) {
          console.log('redes moviles'),
          <InternetAlert titulo='Conexión a Internet establecida' texto='Conectado a redes móviles' />
        } else {
          console.log('WIFI'),
          <InternetAlert titulo='Conexión a Internet establecida' texto='Conectado Wi-Fi' />
        }

      }
    };

    checkConnection();
  },[]);


  return (
   <View style={styles.container}>
      <ImageBackground source={require('../assets/background.png')} style={styles.backgroundImage} >
        <View style={styles.logoContainer}>
          <Image source={require('../assets/logo.png')} style={styles.logo} />
        </View>
        <View style={{ alignSelf: 'center', marginRight: 40 }}>
          <Text style={styles.greetingText}>Hola,</Text>
          <Text style={styles.welcomeText}>Genial verte de nuevo!</Text>
        </View>
        <Link href='/tabs/HomeScreen' style={styles.googleButton}>Iniciar sesión con Google
          {/*  <Text style={styles.buttonText}>Iniciar sesión con Google</Text>  */}
        </Link>
      </ImageBackground>
    </View> 
  );
}