import { useEffect, useState } from "react";
import AceEditor from "react-ace";
import "ace-builds/src-noconflict/mode-html";
import "ace-builds/src-noconflict/theme-tomorrow";
import "ace-builds/src-noconflict/theme-twilight";
import "ace-builds/src-noconflict/ext-language_tools";
import { useParams } from 'react-router-dom';
import { firestore } from '../../services/firebase';
import { Wave } from 'better-react-spinkit';


export default function EditorComponent({ lang }) {
    const [loading, setLoading] = useState(true);
    const [isDark, setIsDark] = useState(true);
    const { userId, projectId, theme }= useParams();
    const [data, setData] = useState({});

    const editorOptions = {
        enableBasicAutocompletion: true,
        enableLiveAutocompletion: true,
        enableSnippets: true
    };

    function onChange(value) {
        var newValue;
        if (lang == 'html') {
            newValue = {...data, html: value};
        } else {
            newValue = {...data, css: value};
        }
        firestore.collection('projects').doc(projectId).set(newValue);
    }

    function buildLoader() {
        return (
            <div className="loader">
                <Wave size={100}/>
            </div>
        );
    }

    useEffect(async () => {   
        try {
            const project = await firestore.collection('projects')
            .where('userId', '==', userId)
            .where('projectId', '==', projectId)
            .get();
            project.forEach(doc => {
                if (doc) {
                    setData(doc.data());
                    setLoading(false);
                    setIsDark(theme == 'dark' ? true : false);
                }
            });
            
        } catch(error) {
            console.log(error);
        }
    }, []);


    return loading ? buildLoader() :(
        <AceEditor
        value={lang == 'html' ? data.html : data.css}
        mode={lang == 'html' ? 'html' : 'css'}
        theme={isDark ? 'twilight' : 'tomorrow'}
        onChange={ onChange }
        name={ projectId }
        setOptions={ editorOptions }
        width="100vw"
        height="100vh"
        fontSize="18px"
      />
    );
}