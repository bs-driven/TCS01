import React from 'react';


function Footer (){
    return(
        <div>
            <div className='footer-footer'>
                <ul className='footer-ul'>
                    <li>
                        < a href='https://github.com/bs-driven'><img className="footer-githubImage"style={{
                            resizeMode: "cover",
                            height: 40,
                            width: 75 }} src={require("./images/GitHub_Logo_White.png")} alt={"GitHub Logo"}/>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    )
}