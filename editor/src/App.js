import {
  BrowserRouter as Router,
  Switch,
  Route,
} from 'react-router-dom';
import Editor from './routes/Editor';
import Home from './routes/Home';

export default function App() {
  return (
    <Router>
      <Switch>
        <Route exact path="/:lang/:userId/:projectId">
          <Editor />
        </Route>
        <Route path="/">
          <Home />
        </Route>
      </Switch>
    </Router>
  );
}


