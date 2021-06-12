import { useParams } from "react-router";
import { firestore } from "../services/firebase";
import { Wave } from "better-react-spinkit";
import { useEffect, useState } from "react";


export default function Preview() {
    const { userName, projectSlug } = useParams();
    const [loading, setLoading] = useState(true);
    const [data, setData] = useState({});

    function buildLoader() {
        return (
            <div className="loader">
                <Wave size={100}/>
            </div>
        );
    }

    useEffect(async () => {
        firestore.collection('projects')
        .where('userName', '==', userName)
        .where('projectSlug', '==', projectSlug)
        .onSnapshot(project => {
            project.forEach(doc => {
                if (doc.data()) {
                    setData(doc.data())
                    setLoading(false);
                }
            });
        });
    }, []);

    return loading 
    ? buildLoader() 
    : <iframe srcDoc={`<style>${data.css}</style>${data.html}`} />;
}