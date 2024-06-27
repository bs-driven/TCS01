import React from 'react';

export default function ItemizedBill(){
    return(
        <div>
            <h1 className = "itemBill-h1">Itemized Bill</h1><br></br><br></br>
            <h2 className = "itemBill-h2">Therapist Name:</h2>
            <h2 className = "itemBill-h2">Client Name:</h2>
            <h3 className = "itemBill-h3">NPI:</h3>
            <h3 className = "itemBill-h3">Dx Code:</h3>
            <h2 className = "itemBill-h2">DOB:</h2>
            <h3 className = "itemBill-h3">Date of Service(s):</h3>
            <h3 className = "itemBill-h3">Rate of Service:</h3>
        </div>
    )
}