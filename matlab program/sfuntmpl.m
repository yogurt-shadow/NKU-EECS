function [sys,x0,str,ts]=sfuntmpl(t,x,u,flag)
case 0,
    [sys,x0,str,ts]=mdlInitializeSizes;
    case 1,
        sys-mdlDerivatives(t,x,u);
        case 2,
            sys=mdlUpdate(t,x,u);
            case 3,
                sys=mdlOutputs(t,x,u);
                case 4,
                    sys=mdlGetTimeOfNextVarHit(t,x,u);
                    case 9,
                        sys=mdlTerminate(t,x,u);
                        otherwise
                            error(['Unhandled flag=',num2str(flag)]);
end
function [sys,x0,str,ts]=mdlInitializeSizes
sizes=simsizes;
sizes.NumContStates=0;
sizes.NumDiscStates=0;
sizes.NumOutputs=1;
sizes.NumInputs=1;
sizes.DirFeedthrough=1;
sizes.NumSampleTimes=1;
sys=simsizes(sizes);
x0=[];
str=[];
ts=[0 0];
    function sys=mdlDerivatives(t,x,u)
        sys=[];
        function sys=mdlUpdate(t,x,u)
            sys=[];
            function sys=mdlOutputs(t,x,u)
                sys=2*u;
                sys=[];
                function sys=mdlGetTimeOfNextVarHit(t,x,u)
                    sampleTime=1;
                    sys=t+sampleTime;
                    function sys=mdlTerminate(t,x,u)
                        sys=[];
                        
        








