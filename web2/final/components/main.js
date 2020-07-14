import React, { Component } from 'react';
import { StyleSheet, ScrollView, ActivityIndicator, View, TextInput } from 'react-native';
import { Button , Text, Image} from 'react-native-elements';


class main extends Component{
    constructor(){
        super();
    }
    render() {

      return (
        <View style={styles.container}>
          <Text h1>Bienvenido(a)</Text>
          <Image
            source={require('./libros.jpg')}
            style={{ width: 246, height: 300}}
            PlaceholderContent={<ActivityIndicator />}
           />
          <Button
            buttonStyle={ styles.buton}
            type ="outline"

            onPress={() => { this.props.navigation.navigate('Board')}}
            title= "Siguiente"/>
        </View>
      );    
  }
}
const styles = StyleSheet.create({
  container: {
      flexDirection: 'column',
      justifyContent: 'center',
      alignItems: 'center',
      height: 500
  },
 buton:{
     width:100,
 },    
  subContainer: {
    flex: 1,
    marginBottom: 20,
    padding: 5,
    borderBottomWidth: 2,
    borderBottomColor: '#CCCCCC',
  },
  activity: {
    position: 'absolute',
    left: 0,
    right: 0,
    top: 0,
    bottom: 0,
    alignItems: 'center',
    justifyContent: 'center'
  }
})
export default main;