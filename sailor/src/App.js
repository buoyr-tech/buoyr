import {
  BrowserRouter as Router,
  Switch,
  Route, 
} from 'react-router-dom';
import Preview from './routes/Preview';

export function App() {
  return (
    <Router>
      <Switch>
        <Route path="/:userName/:projectSlug">
          <Preview />
        </Route>
      </Switch>
    </Router>
  );
}

export default App;
