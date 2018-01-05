window.onload = function()
{
/*var name = new LiveValidation("pass1");
name.add(Validate.Presence);
name.add(Validate.Format,{pattern:/^[a-zA-z0-9,._/\s]{1,}$/});
var locality = new LiveValidation("local_id");
locality.add(Validate.Presence);
locality .add(Validate.Format,{pattern:/^[a-zA-z0-9,._/\s]{1,}$/});
var hno = new LiveValidation("hno_id");
hno.add(Validate.Presence);
hno.add(Validate.Format,{pattern:/^[a-zA-z0-9,._/\s]{1,}$/});
var pincd = new LiveValidation("pincd_id");
pincd.add(Validate.Presence);
pincd .add(Validate.Format,{pattern:/^[a-zA-z0-9._/\s]{1,}$/});
var pslt = new LiveValidation("pslt_id");
pslt.add(Validate.Presence);
pslt.add(Validate.Format,{pattern:/^[a-zA-z0-9,._/\s]{1,}$/});
var mbno = new LiveValidation("mbno_id");
mbno.add(Validate.Presence);
mbno.add(Validate.Format,{pattern:/^[6-9][0-9]{9}$/});
var pno = new LiveValidation("pno_id");
pno.add(Validate.Presence);
pno.add(Validate.Format,{pattern:/^[0-9]{9,}$/});
var email = new LiveValidation("email");
email.add(Validate.Presence);
email.add(Validate.Format,{pattern:/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.]+\.[a-z]{2,4}$/});
var uid = new LiveValidation("uid_id");
uid.add(Validate.Presence);
uid.add(Validate.Format,{pattern:/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.]+\.[a-z]{2,4}$/});*/
var password = new LiveValidation("password",{validMessage:"Strong Password is Preferred Ex:User#198"});
password.add(Validate.Presence,{failureMessage:"Password cannot be empty"});

var password1 = new LiveValidation("password1");
password1.add(Validate.Confirmation,{match:"password"});
//var secqus = new LiveValidation("secqus_id");
//secqus.add(Validate.Presence);
//secqus .add(Validate.Format,{pattern:/^[a-zA-z0-9,._/\s]{1,}$/});
//var secans = new LiveValidation("secans_id");
//secans.add(Validate.Presence);
//secans.add(Validate.Format,{pattern:/^[a-zA-z0-9,._/\s]{1,}$/});
//var letters_code = new LiveValidation("6_letters_code");
//secans.add(Validate.Presence);
//secans.add(Validate.Format,{pattern:/^[a-zA-z0-9,._/\s]{1,}$/});
/*var scat = new LiveValidation("ucoun_id");
    scat.add(Validate.Exclusion,{within:["Select country"]});
var stickerno = new LiveValidation("uname_id");
stickerno.add(Validate.Presence);
stickerno.add(Validate.Format,{pattern:/^[a-zA-z0-9\s]{1,}$/});
//stickerno.add(Validate.Length,{minimum:6,maximum:20});
var dealernm = new LiveValidation("dname_id");
dealernm.add(Validate.Presence);
dealernm .add(Validate.Format,{pattern:/^[a-zA-z0-9,._/\s]{1,}$/});
//dealernm.add(Validate.Length,{minimum:6,maximum:20});
var name_owner = new LiveValidation("nname_id");
name_owner.add(Validate.Presence);
name_owner .add(Validate.Format,{pattern:/^[a-zA-z0-9,._/\s]{1,}$/});
//name_owner.add(Validate.Length,{minimum:6,maximum:20});
var licence_no = new LiveValidation("lice_id");
licence_no.add(Validate.Presence);
licence_no .add(Validate.Format,{pattern:/^[a-zA-z0-9._/\s]{1,}$/});
//licence_no.add(Validate.Length,{minimum:6,maximum:20});
var validity = new LiveValidation("val_id");
validity.add(Validate.Presence);
validity.add(Validate.Format,{pattern:/^(0[1-9]|[12][0-9]|3[01])[- /.](0[1-9]|1[012])[- /.](19|20)\d\d$/});
var btno = new LiveValidation("btno_id");
btno.add(Validate.Presence);
btno .add(Validate.Format,{pattern:/^[a-zA-z0-9,._/\s]{1,}$/});
//btno.add(Validate.Length,{minimum:6,maximum:20});
var latno = new LiveValidation("latno_id");
latno.add(Validate.Presence);
latno .add(Validate.Format,{pattern:/^[a-zA-z0-9,._/\s]{1,}$/});
//latno.add(Validate.Length,{minimum:6,maximum:20});
var spos = new LiveValidation("spos_id");
spos.add(Validate.Presence);
spos .add(Validate.Format,{pattern:/^[a-zA-z0-9,._/\s]{1,}$/});
//spos.add(Validate.Length,{minimum:6,maximum:20});
//var state = new LiveValidation("state");
//state.add(Validate.Exclusion,{within:["Select country"]});
//var dist = new LiveValidation("dist_id");
//dist.add(Validate.Exclusion,{within:["Select country"]});
var locality = new LiveValidation("locality_id");
locality.add(Validate.Presence);
locality .add(Validate.Format,{pattern:/^[a-zA-z0-9,._/\s]{1,}$/});
//locality.add(Validate.Length,{minimum:6,maximum:20});
var door_no = new LiveValidation("door_no_id");
door_no.add(Validate.Presence);
door_no.add(Validate.Format,{pattern:/^[a-zA-z0-9,._/\s]{1,}$/});
//door_no.add(Validate.Length,{minimum:6,maximum:20});
//var splcode = new LiveValidation("splcode_id");
//splcode.add(Validate.Exclusion,{within:["Select country"]});
//var ferti = new LiveValidation("ferti");
//ferti.add(Validate.Exclusion,{within:["Select country"]});
//var grade = new LiveValidation("grade_id");
//grade.add(Validate.Exclusion,{within:["Select country"]});
//var physical_condition = new LiveValidation("physical_condition_id");
//physical_condition.add(Validate.Exclusion,{within:["Select country"]});
//var composition = new LiveValidation("composition_id");
//composition.add(Validate.Exclusion,{within:["Select country"]});
var dmunf = new LiveValidation("dm_id");
dmunf.add(Validate.Format,{pattern:/^[a-zA-z0-9,._/\s]{1,}$/});
dmunf.add(Validate.Presence);
//dmunf.add(Validate.Length,{minimum:6,maximum:20});
var address = new LiveValidation("address_id");
address.add(Validate.Format,{pattern:/^[a-zA-z0-9,._/\s]{1,}$/});
address.add(Validate.Presence);
var upload_panchnama_report = new LiveValidation("upload_panchnama_report_id");
upload_panchnama_report.add(Validate.Format,{pattern:/\.(jpe?g|gif|png)$/});*/
}