import { Redirect, useParams } from "react-router";
import EditorComponent from "./components/EditorComponent";


export default function Editor() {
    const {lang} = useParams();
    if (lang != 'html' && lang !='css') {
        return <Redirect to="/" />
    } 
    return <EditorComponent lang={ lang } />
}


