import React from "react"

class ContractForm extends React.Component {

  constructor() {
    super()
    this.state = {
      name: '',
      phone: '',
      address: '',
    }
  }

  handleValidationError(formErrorObj) {
    this.setState({formErrors: formErrorObj});
  }

  newContractSubmit(e) {
    e.preventDefault();
    this.props.parentProjectSubmit(
      {project: {name: this.state.name, phone: this.state.phone, address: this.state.address}},
      this.handleValidationError
    );
  }

  handleNameChange(e) {
    this.setState({name: e.target.value});
  }

  handlePhoneChange(e) {
    this.setState({phone: e.target.value});
  }

  handleAddressChange(e) {
    this.setState({address: e.target.value});
  }

  renderFieldErrors(attr) {
    if(this.setState.formErrors[attr]){
      return(
        this.state.formErrors[attr].map(function(error, i){
          return(
            <span key={i} className="help-block">
              {error}
            </span>
          );
        })
      );
    }
    else{
      return "";
    }
  }

  renderContractNameField(){
    let formGroupClass = this.state.formErrors["name"] ? "form-group has-error" : "form-group"
    return(
      <div className= {formGroupClass}>

        <input
          name="project[name]"
          type="string"
          placeholder="Name"
          value={this.state.name}
          onChange={this.handleNameChange}
          className="string form-control"
        />

        {this.renderFieldErrors("name")}

      </div>
    );
  }

  renderContractPhoneField(){
    let formGroupClass = this.state.formErrors["phone"] ? "form-group has-error" : "form-group"
    return(
      <div className= {formGroupClass}>

        <input
          name="project[phone]"
          type="string"
          placeholder="Phone"
          value={this.state.phone}
          onChange={this.handlePhoneChange}
          className="string form-control"
        />

        {this.renderFieldErrors("phone")}

      </div>
    );
  }

  renderContractAddressField(){
    let formGroupClass = this.state.formErrors["address"] ? "form-group has-error" : "form-group"
    return(
      <div className= {formGroupClass}>

        <input
          name="project[address]"
          type="string"
          placeholder="Address"
          value={this.state.phone}
          onChange={this.handleAddressChange}
          className="string form-control"
        />

        {this.renderFieldErrors("address")}

      </div>
    );
  }

  render () {
    return (
      <React.Fragment>
        <div>
          <h4 style={{marginTop: "50px"}}> Create New Project </h4>

          <form style={{marginTop: "30px"}} onSubmit={this.newProjectSubmit}>

            <div className='form-inputs'/>


              {this.renderContractNameField()}

              {this.renderContractPhoneField()}

              {this.renderContractAddressField()}


            <div className='row'>
              <div className='col-sm-4'>
                <input type="submit" value="Save" className='btn btn-primary' />
              </div>
            </div>

          </form>

        </div>
      </React.Fragment>
    );
  }
}

export default ContractForm
