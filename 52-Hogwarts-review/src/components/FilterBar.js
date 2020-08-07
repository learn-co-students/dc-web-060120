import React from "react";

class FilterBar extends React.Component {
  render() {
    return (
      <div>
        <label>Filter:</label>
        <input type="radio" name="filter" onClick={(e) => this.props.filterHogs(e)} value="greased" /> <span>Greased</span>
        <input type="radio" name="filter" onClick={(e) => this.props.filterHogs(e)} value="not-greased" /> <span>not-greased</span>

        <br/>

        <label>Sort By:</label>
        <select onChange={(e) => this.props.sortHogs(e)}>
          <option value="name">Name</option>
          <option value="weight">Weight</option>
        </select>
      </div>
    );
  }
}

export default FilterBar;
