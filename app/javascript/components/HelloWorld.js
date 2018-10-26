import React from "react"
import PropTypes from "prop-types"
import ReactTable from "react-table"
import 'react-table/react-table.css'

class HelloWorld extends React.Component {
  render () {
    return (
      // <React.Fragment>
      //   Hey! Greeting: {this.props.greeting}
      // </React.Fragment>

      <div className="c-section">
        <ReactTable
          data={this.props.books}
          columns={[
            {
              Header: "Title",
              accessor: "title"
            },
            {
              Header: "Author",
              accessor: "author.name"
            },
            {
              Header: "Price",
              accessor: "price",
              width: 100,
              maxWidth: 100, 
              minWidth: 100
            },
            {
              Header: "Content",
              accessor: "content"
            }
          ]}
        />
      </div>
    );
  }
}

HelloWorld.propTypes = {
  greeting: PropTypes.string
};
export default HelloWorld
