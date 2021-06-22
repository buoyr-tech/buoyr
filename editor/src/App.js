import {
  BrowserRouter as Router,
  Switch,
  Route,
} from 'react-router-dom';
import Editor from './routes/Editor';
import Preview from './routes/Preview';
import Share from './routes/Share';
import Home from './routes/Home';

export default function App() {
  return (
    <Router>
      <Switch>
        <Route exact path="/:userId/:projectId/preview" component={Preview} />
        <Route exact path="/:lang/:userId/:projectId/editor" component={Editor} />
        <Route exact path="/:userName/:projectSlug/" component={Share} />
        <Route path="/" component={Home} />
      </Switch>
    </Router>
  );
}


