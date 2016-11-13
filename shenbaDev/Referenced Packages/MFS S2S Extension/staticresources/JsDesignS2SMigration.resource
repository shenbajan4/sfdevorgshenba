function approveLookUpAssignment(){
        var isCancel = confirm("Are you sure? This will Update the Selected Reference fields.");
        if (isCancel) return true;
        return false;
    } 

function approveMigration(){
        var isCancel = confirm("Are you sure? This will Insert the Selected Object along with the selected childs.");
        if (isCancel) return true;
        return false;
    } 