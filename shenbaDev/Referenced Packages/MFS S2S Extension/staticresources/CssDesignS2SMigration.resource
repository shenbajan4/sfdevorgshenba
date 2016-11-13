div.background
    {
        position:fixed;
        top:0;
        left:0;
        width:100%;
        height:100%;
        /*! important !*/
        display:block;
        /* last attribute set darkness on scale: 0...1.0 */
        background-color:rgba(0,0,0,0.8);
        text-align:center;
        z-index:101;
        /* rounded corners */
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
         border-radius: 10px;
    }
    div.transbox
    {
        width:20%;
        height:54px;
        margin:20% 40%;
        background-color:#ffffff;
        border:1px solid black;
        //opacity:0.2;
        //filter:alpha(opacity=60); /* For IE8 and earlier */
        -moz-border-radius: 10px;
        -webkit-border-radius: 10px;
        border-radius: 10px;
    }
    div.transbox p
    {
	align: center;
        font-weight:bold;
        color:#000000;
    }

    .custPopup{
            background-color:#ffffff;
            
            border-width: 2px;
            border-style: solid;
            z-index:101;
            left: 50%;
            padding:1%;
            position: absolute;
            width: 40%;
            height: 75%;
            margin-left: -20%;
            top:10%;
            overflow-y:auto;
            //overflow-x:hidden;
            //overflow:auto;
            border-radius: 10px;
            
        }
        .popupBackground{
            background-color:rgba(0,0,0,0.7);
            position: fixed;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            display:block;
            z-index: 101;
        }