import React from "react"
import PropTypes from "prop-types"
import ReactTable from "react-table"
import 'react-table/react-table.css'

class HelloWorld extends React.Component {
  render () {
    return (
      <React.Fragment>
        Hey! Greeting: {this.props.greeting}
      </React.Fragment>

      // <div>

      // </div>
    );
  }
}

HelloWorld.propTypes = {
  greeting: PropTypes.string
};
export default HelloWorld
