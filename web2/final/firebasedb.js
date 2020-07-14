import firebase from 'firebase';
import 'firebase/firestore';

const config = {
  apiKey: "AIzaSyC4aJ2aCfjRhxcocoXgJ-m_gqs9fWkOKo4",
  authDomain: "xtracorp-2a4ce.firebaseapp.com",
  databaseURL: "https://xtracorp-2a4ce.firebaseio.com",
  projectId: "xtracorp-2a4ce",
  storageBucket: "xtracorp-2a4ce.appspot.com",
  messagingSenderId: "73429451908"
};
firebase.initializeApp(config);


export default firebase;