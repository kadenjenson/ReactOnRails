import React from "react"
import PropTypes from "prop-types"
class ContractForm extends React.Component {

  constructor() {
    super()
    this.parentContractSubmit = this.parentContractSubmit.bind(this);
    this.parentUpdateContract = this.parentUpdateContract.bind(this);
  }

  getInitialState(){
    return {
      contracts: this.props.contrats,
    }
  }

  parentContractSubmit(formData, onSuccess, onError){

    $.ajax({
      url: "/contracts",
      dataType: 'json',
      type: 'POST',
      data: formData,

      success = (contracts) => {
        this.setState({contracts: contracts});
        onSuccess();
      },

      error = (response, status, err) => {
        onError(response.responseJSON)
      }

    });
  }

  parentUpdateContract(){

    $.ajax({
      url: ("/contracts/" + formData["project"]["id"]),
      dataType: 'json',
      type: 'PATCH',
      data: formData,

      success = (projects) => {
        this.setState({contracts: projects, showNewForm: false});
        onSuccess();
      },

      error = (response, status, err) => {
        onError(response.responseJSON)
      }
    });
  }

  render () {
    return (
      <React.Fragment>
        <div>
          
        </div>
      </React.Fragment>
    );
  }
}

export default ContractForm
