import { useState } from 'react';
import React from 'react';


// Behavior; Interventions; Reponse; Plan; y/n next sessions;date; signature;duration;client name; service locationfunction MyForm() {
 const BIRPnote = () => {
  const [behavior, setBehavior] = useState('');
  const [intervention, setIntervention] = useState('');
  const [response, setResponse] = useState('');
  const [plan, setPlan] = useState('');

  const handleSave = () => {
    // logic to save BIRP note

    console.log('BIRP Note saved:', {behavior, intervention, response, plan });
  };

  return(
    <div>
      <h3>BIRP Note</h3>
      <textarea
      value={behavior}
      onChange={(e) => setBehavior(e.target.value)}
      placeholder="Behavior"
      />
      <textarea
      value={intervention}
      onChange={(e) => setIntervention(e.target.value)}
      placeholder='Intervention'
      />
      <textarea
      value={response}
      onChange={(e) => setResponse(e.target.value)}
      placeholder='Response'
      />
      <textarea
      value={plan}
      onChange={(e) => setPlan(e.target.value)}
      placholder="Plan"
      />
      <button onClick={handleSave}>Save BIRP Note</button>


    </div>
  );
  


 };
 
 export default BIRPnote;