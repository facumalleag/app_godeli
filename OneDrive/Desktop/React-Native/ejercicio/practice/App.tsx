import React, { useState } from 'react'
import { Button, StyleSheet, Text, View, TextInput, Dimensions, TouchableHighlight, TouchableNativeFeedback, TouchableOpacity, ScrollView, FlatList } from 'react-native';
import { StatusBar } from 'expo-status-bar';
import Login from './src/Login';

const width = Dimensions.get('window').width
const height = Dimensions.get('window').height

const Texto = () => {
  const [texto, setTexto] = useState('Hola sarnoso')

  const actualizatexto = () => {
    setTexto('Cambio el texto')
  }
  return (
    <Text
      onPress={actualizatexto}
    >{texto}</Text>
  )

}
export default function App() {


  const [msj, setMsj] = useState('mail@mail.com')
  const [submitted, setSubmit] = useState('')

  return (
    <View style={styles.container}>
      <Login/>
       <Text>Texto: {submitted}</Text>
      <TextInput
        style={styles.input}
        placeholder='Escriba aqui'
        onChangeText={msj => setMsj(msj)}
        defaultValue={msj}
      />{/*
      <TouchableHighlight
      underlayColor={'#999'}
      activeOpacity={0.2}
        onPress={() => {
          setSubmit(msj)
          alert('Mensaje enviado')
        }
        }>
          <Text>Aceptar</Text>
      </TouchableHighlight>
      <TouchableNativeFeedback
      background={TouchableNativeFeedback.Ripple('#00f',true)}
        onPress={() => {
          setSubmit(msj)
          alert('Mensaje enviado')
        }
        }>
          <View
          style={styles.view}
          >
            <Text>QWEQWEQW</Text>
          </View>
      </TouchableNativeFeedback>

      <TouchableOpacity
      style={styles.opacity}
        onPress={() => {
          setSubmit(msj)
          alert('Mensaje enviado')
        }
        }>
          <View
          style={styles.view}
          >
            <Text>DASDSA</Text>
          </View>

      </TouchableOpacity>
      <FlatList
        data={[
          {key:'1', name:'Nicolas'},
          {key:'2', name:'Rover plate'},
          {key:'3',  name:'Velze Sarsfield'},
        ]}
        renderItem={({item})=>
          <Text
          style={styles.item}>{item.name}</Text>
        }
      /> */}
    </View>
  );
}

export const styles = StyleSheet.create({
  item:{
    padding:10,
    fontSize:22,
    height:50,
    borderBottomColor:'#ccc',
    borderBottomWidth:1,
    alignItems:'stretch'
  },
  container: {
    flexDirection: 'column',
    backgroundColor: '#fff',
    alignItems: 'center',
    marginLeft: 20,
    justifyContent: 'center',
  },
  input: {
    width: width,
    height: 40,
    borderBottomColor: '#ccc',
    borderBottomWidth: 1,
  },
  view:{
    height:50,
    width:100,
    alignItems: 'center',
    justifyContent: 'center',
  },
  opacity:{
    backgroundColor:'#eee',
    alignItems: 'center',
    justifyContent: 'center',
  }
});