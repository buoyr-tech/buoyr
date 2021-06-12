import { useEffect, useState } from "react";
import AceEditor from "react-ace";
import "ace-builds/src-noconflict/mode-html";
import "ace-builds/src-noconflict/theme-monokai";
import "ace-builds/src-noconflict/ext-language_tools";
import { useParams } from 'react-router-dom';
import { firestore } from '../services/firebase';
import { Wave } from 'better-react-spinkit';




export default function Editor() {
    const [loading, setLoading] = useState(true);
    const [data, setData] = useState({});
    const { userId, projectId }= useParams();

    const editorOptions = {
        enableBasicAutocompletion: true,
        enableLiveAutocompletion: true,
        enableSnippets: true
    };

    function onChange(value) {
        // console.log(data);
        const newValue = {...data, html: value};
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
        /** 
         * Once this component is loaded,
         * fetch the data regarding of this project via Firestore.
         * 
         * User userId and projectId to fetch the data.
         * 
         * Once fetched, set loading = false.
         * 
         * Load source code into the editor.
         */
        
        try {
            const project = await firestore.collection('projects')
            .where('userId', '==', userId)
            .where('projectId', '==', projectId)
            .get();
            project.forEach(doc => {
                if (doc) {
                    setData(doc.data());
                    setLoading(false);
                }
            });
            
        } catch(error) {
            console.log(error);
        }
    }, []);


    return loading ? buildLoader() :(
        <AceEditor
        value={`<style>${data.css}</style>${data.html}`}
        mode="html"
        theme="monokai"
        onChange={ onChange }
        name={ projectId }
        setOptions={ editorOptions }
        width="100vw"
        height="100vh"
        fontSize="18px"
      />
    );
}