import React from 'react';


function NavTabs({currentPage, handlePageChange}){
    return(
        <ul className='nav nav-tabs'>
            <li className="nav-item"><a href="#home"
            onClick={() => handlePageChange('Home')}
            className={currentPage === 'Home'? 'nav link active' : 'nav-link'}>Home</a>

            </li>
        </ul>
    )
}