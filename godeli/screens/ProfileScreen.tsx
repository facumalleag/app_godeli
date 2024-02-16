import React from 'react'
import { Text, TextInput, TouchableOpacity, View } from 'react-native'
import { Ionicons } from '@expo/vector-icons';
import { styles } from '../theme/ProfileStyle';
import {
    GoogleSignin,
    GoogleSigninButton,
    statusCodes,
  } from "@react-native-google-signin/google-signin";

//const icon = this.props.active

const ProfileScreen = () => {
    const logout = () => {
        console.log("Pressed logout");
        // setUserInfo(undefined);
        GoogleSignin.revokeAccess();
        GoogleSignin.signOut();
      };

    return (
        <View>
            <View style={styles.globalMargin}>
                <Ionicons name="skull-outline" size={180} color="#129575" />
            </View>
            <View style={styles.form}>
                <Text style={styles.titleName}>Nombre y Apellido</Text>
                <TextInput
                    style={styles.textName
                    }
                    placeholder='John Doe'
                    autoCapitalize='none'
                    autoCorrect={false}
                />
                <Text style={styles.titleName}>Email</Text>
                <TextInput
                    style={styles.textName
                    }
                    placeholder='johndoe@mai.com'
                    autoCapitalize='none'
                    autoCorrect={false}
                />
            </View>
                <TouchableOpacity style={styles.btnGreen} onPress={logout}>
                    <Text style={styles.textBtnGreen}>Cerrar sesión</Text>
                </TouchableOpacity>
                <TouchableOpacity style={styles.btnRed}>
                    <Text style={styles.textBtnRed}>Dar de baja la cuenta</Text>
                </TouchableOpacity>
        </View>

    )
}

export default ProfileScreen
