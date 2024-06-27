import React, { useState } from 'react';

export default DAPNote = () => {
    const [data, setData] = useState('');
    const [assesment, setAssesment] = useState('');
    const [plan, SetPlan] = useState('');

    const handleSave = () =>{
        // logic to save DAP note
        console.log('DAP Note saved',{ data, assesment, plan});
    };

    return(
        <div>
            <h3>DAP Note</h3>
            <textarea
            value={data}
            onChange={(e) => setData(e.target.value)}
            placeholder="Data"
            />
            <textarea
            value={assesment}
            onChange={(e) => setAssesment(e.target.value)}
            placeholder="Assesment"
            />
            <textarea
            value={plan}
            onChange={(e) => SetPlan(e.target.value)}
            placeholder='Plan'
            />
            <button onClick={handleSave}>Save DAP Note</button>
        </div>

    );
};