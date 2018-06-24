var arrayflag = [false,false,false];
function flagcheck(page)
{
 if(page==='signup')
        {
            if( arrayflag[0]&&arrayflag[1]&&arrayflag[2]===true)
            {
                return true;
            }
            else
            {
                if(arrayflag[0]===false)
                {
                    alert("Check the Email box");
                }
                if(arrayflag[2]===false)
                {
                    alert("Check the Mobile box");
                }
                if(arrayflag[1]===false)
                {
                    alert("Check the Pass box");
                }
            return false;
            }
        }
    if(page==='login')
        {
            if( arrayflag[0]&&arrayflag[1]===true)
            {
                return true;
            }
             else
            {
                if(arrayflag[0]===false)
                {
                    alert("Check the Email box");
                }
                if(arrayflag[1]===false)
                {
                    alert("Check the Pass box");
                }
            return false;
            }
        }
}


function ValidEmail()
{
    
    var email = document.getElementById('email');
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

    if (!filter.test(email.value)) 
    {
    alert('Please provide a valid email address');
    //document.getElementById("emaildiv").focus;
    //document.getElementById("emaildiv").style.border = "2px solid red";
    document.getElementById("tickE").src='../img/icons/twitter.png';
    arrayflag[0]= false;
    }
    else{
        //document.getElementById("emaildiv").style.border = "none";
        //document.getElementById("emaildiv").style.borderBottom = "1px solid #778899";
        document.getElementById("tickE").style.content = "url('../img/icons/tick.png')";
        arrayflag[0]= true;
    }
}

function ValidPass(page)
{
    
    arrayflag[1]= true;
    if(page==='signup')
        {
                var pass1=document.getElementById('pass1').value;
                var pass2=document.getElementById('pass2').value;
                //var reg_pass =new reg_exp(/^?=.*[0-9]$/);
                //var reg_pass = /^?=.*[0-9]$/;
                if(pass1===""||pass1===null)
                    {
                        alert('Enter Your Password');
                        arrayflag[1]= false;
                    }
                else if(pass2===""||pass2===null)
                {
                    alert('Enter confirm password');
                    arrayflag[1]= false;
              
                }
                else if(pass1!==pass2)
                {
                    alert('Password MisMatch');
                    arrayflag[1]= false;
                }
                /*else if(reg_pass.test(pass1)==false)
                {
                alert("password should be in this form (?=.*[0-9])");
                return false;
                arrayflag[1]= false;
                }*/ 
        }
    if(page==='login')
        {
            var pass=document.getElementById('pass').value;
            if(pass===""||pass===null)
                    {
                        alert('Enter Your Password');
                        arrayflag[1]= false;
                    }
        }
    
}

function ValidMob()
{
    arrayflag[2]= true;
    var mob=document.getElementById('mob').value;
    //var reg_mob=new RegExp(/^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$/);
    var reg_mob=/^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$/;
    if(mob===""||mob===null)
        {
            alert('Enter your MObile Number');
            arrayflag[2]= false;
        }
    else if(reg_mob.test(mob)===false)
            {
                alert('Enter 10 digits for mobile number');
                arrayflag[2]= false;
            }
}