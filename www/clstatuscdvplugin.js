
var argscheck = cordova = require('cordova');
               


var CLStatusCDVPluginClass = function () {
    var kClassName = "CLStatusBarCDVPlugin";
    var self = this;

    self.changeStatusBarColor = function(isBlack)
    {
        if(typeof exec === 'undefined')
            {
                if(typeof cordova === 'undefined' || typeof cordova.exec === 'undefined')
                {
                     exec = function (){};
                }else
                {
                    exec = cordova.exec;
                }
            }
            var param = isBlack?'isBlack':'isWhite'
            exec(function(){}, function(){}, kClassName, 'changeStatusBarColor', [param]);
    }
}


module.exports =  new CLStatusCDVPluginClass();


