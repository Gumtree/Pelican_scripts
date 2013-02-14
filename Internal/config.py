import time
from org.gumtree.gumnix.sics.control.events import DynamicControllerListenerAdapter
from org.gumtree.gumnix.sics.control import IStateMonitorListener
from org.gumtree.gumnix.sics.io import SicsProxyListenerAdapter
from org.eclipse.swt.events import DisposeListener
from org.eclipse.swt.widgets import TypedListener
from Gumtree_Workspace.Internal import sicsext
from au.gov.ansto.bragg.nbi.ui.scripting import ConsoleEventHandler
from org.eclipse.swt.widgets import Display
from java.lang import Runnable
from java.lang import System
from java.io import File
from time import strftime, localtime
import traceback, sys
from gumpy.commons import sics

# Script control setup area
# script info
__script__.title = 'Pelican Configuration'
__script__.version = '1.0'

print 'Please wait for SICS connection'
while sics.getSicsController() == None:
    time.sleep(3)

def get_prof_value(name):
    value = __UI__.getPreference(name)
    if value == None:
        value = ''
    else:
        value = str(value)
    return value

def set_prof_value(name, value):
    if value == None:
        value = ''
    __UI__.setPreference(name, value)
    
if hasattr(sics, 'ready'):
    if not sics.ready:
        time.sleep(0.5)
        
Par.__model__ = __model__
Act.__model__ = __model__
Group.__model__ = __model__
# Use below example to create parameters.
# The type can be string, int, float, bool, file.
g1 = Group('Experiment setup')
Proposal_Number = Par('string', '')
Experimental_Team = Par('string', '')
Local_Contact = Par('string', '')
Experiment_Title = Par('string', '')
Sample_Name = Par('string', '')
act1 = Act('exp_setup()', 'Apply Change to Experiment Setup')
g1.add(Proposal_Number, Experimental_Team, Local_Contact, 
       Experiment_Title, Sample_Name, act1)
pnumber = get_prof_value('pelican.proposal.number')
if pnumber:
    Proposal_Number.value = pnumber
lcontact = get_prof_value('pelican.local.contract')
if lcontact :
    Local_Contact.value = lcontact
def exp_setup():
    set_prof_value('pelican.proposal.number', Proposal_Number.value)
    set_prof_value('pelican.local.contract', Local_Contact.value)
    sics.set('user', Experimental_Team.value)
    sics.set('title', Experiment_Title.value)
    sics.set('samplename', Sample_Name.value)
    print 'Updated'

g2 = Group('Instrument configuration')
Wavelength = Par('string', '')
Wavelength.enabled = False
Moncohromator_Vertical_Focussing = Par('bool', False)
Moncohromator_Vertical_Focussing.enabled = False
Monochromator_Time_Focussing = Par('bool', False)
Monochromator_Time_Focussing.enabled = False
Slit_1_Top = Par('float', 0)
Slit_1_Bottom = Par('float', 0)
Fermi_Chopper_1_Frequency = Par('float', 0)
Fermi_Chopper_1_Frame_Overlap_Ratio = Par('float', 0)
Fermi_Chopper_1_Frame_Overlap_Ratio.enabled = False
Second_Order_Filter = Par('string', '', options = ['none','graphite','Be'])
Polariser = Par('string', '', options = ['none','polariser','collimator'])
Fermi_Chopper_2_Frequency = Par('float', 0)
Fermi_Chopper_2_Time_Focussing = Par('bool', False)
Fermi_Chopper_2_Time_Focussing.enabled = False
Slit_2_Top = Par('float', 0)
Slit_2_Bottom = Par('float', 0)
Radial_Collimator = Par('bool', False)
Radial_Collimator_Frequency = Par('float', 0)
Sample_Tank_Angle = Par('float', 0)
Sample_Tank_Angle.enabled = False
act2 = Act('ins_config()', 'Apply Change to Instrument Configuration')

g2.add(Wavelength, Moncohromator_Vertical_Focussing, 
       Monochromator_Time_Focussing, Slit_1_Top, Slit_1_Bottom, 
       Fermi_Chopper_1_Frequency, Fermi_Chopper_1_Frame_Overlap_Ratio, 
       Second_Order_Filter, Polariser, Fermi_Chopper_2_Frequency, 
       Fermi_Chopper_2_Time_Focussing, 
       Slit_2_Top, Slit_2_Bottom, Radial_Collimator, 
       Radial_Collimator_Frequency, Sample_Tank_Angle, act2)

__initialised__ = False
__trial_count__ = 0
while not __initialised__ and __trial_count__ < 100:
    try:
        Experimental_Team.value = sics.getValue('user').getStringData()
        Experiment_Title.value = sics.getValue('title').getStringData()
        Sample_Name.value = sics.getValue('samplename').getStringData()
        wl = sics.getValue('vwi').getFloatData()
        Wavelength.value = str(wl)
        sv1 = sics.getValue('sv1').getFloatData()
        Slit_1_Top.value = sv1
        sh1 = sics.getValue('sh1').getFloatData()
        Slit_1_Bottom.value = sh1
        mchs = sics.getValue('mchs').getFloatData()
        Fermi_Chopper_1_Frequency.value = mchs
        schs = sics.getValue('schs').getFloatData()
        Fermi_Chopper_2_Frequency.value = schs
        vftz_value = int(sics.getValue('vftz').getFloatData())
        if vftz_value == 1:
            Second_Order_Filter.value = 'graphite'
        elif vftz_value == 2:
            Second_Order_Filter.value = 'none'
        elif vftz_value == 3:
            Second_Order_Filter.value = 'Be'
        else:
            Second_Order_Filter.value = 'none'
        vftz = Second_Order_Filter.value
        vptz_value = int(sics.getValue('vptz').getFloatData())
        if vptz_value == 3:
            Polariser.value = 'polariser'
        elif vptz_value == 2:
            Polariser.value = 'none'
        elif vptz_value == 1:
            Polariser.value = 'collimator'
        else:
            Polariser.value = 'none'
        vptz = Polariser.value
        vrcz_value = int(sics.getValue('vrcz').getFloatData())
        if vrcz_value == 1:
            Radial_Collimator.value = True
        elif vrcz_value == 2:
            Radial_Collimator.value = False
        vrcz = Radial_Collimator.value
        sv2 = sics.getValue('sv2').getFloatData()
        Slit_2_Top.value = sv2
        sh2 = sics.getValue('sh2').getFloatData()
        Slit_2_Bottom.value = sh2
        rco = sics.getValue('rco').getFloatData()
        Radial_Collimator_Frequency.value = rco
        sta = sics.getValue('stth').getFloatData()
        Sample_Tank_Angle.value = sta
        __initialised__ = True
    except:
        __trial_count__ += 1


def ins_config():
    global sv1, sh1, sv2, sh2, vftz, vptz, vrcz, rco, mchs, schs
    if confirm('Warning: this will run the SICS commands to drive the real devices of Pelican. To continue, press OK.'):
        devs = dict()
        if sv1 != Slit_1_Top.value :
            devs['sv1'] = Slit_1_Top.value
        if sh1 != Slit_1_Bottom.value:
            devs['sh1'] = Slit_1_Bottom.value
        if mchs != Fermi_Chopper_1_Frequency.value:
            devs['mchs'] = Fermi_Chopper_1_Frequency.value
        if schs != Fermi_Chopper_2_Frequency.value:
            devs['schs'] = Fermi_Chopper_2_Frequency.value
        vftz_value = str(Second_Order_Filter.value)
        if vftz != vftz_value:
            if vftz_value == 'graphite':
                 devs['vftz'] = 1
            elif vftz_value == 'none':
                 devs['vftz'] = 2
            elif vftz_value == 'Be':
                 devs['vftz'] = 3
        vptz_value = str(Polariser.value)
        if vptz != vptz_value :
            if vptz_value == 'polariser':
                 devs['vptz'] = 3
            elif vptz_value == 'none':
                 devs['vptz'] = 2
            elif vptz_value == 'collimator':
                 devs['vptz'] = 1
        if sv2 != Slit_2_Top.value:
            devs['sv2'] = Slit_2_Top.value
        if sh2 != Slit_2_Bottom.value:
            devs['sh2'] = Slit_2_Bottom.value
        vrcz_value = Radial_Collimator.value
        if vrcz != vrcz_value :
            if vrcz_value :
                 devs['vrcz'] = 1
            else :
                 devs['vrcz'] = 2
#        sics.multiDrive(devs)
        if rco != Radial_Collimator_Frequency.value:
            devs['rco'] = Radial_Collimator_Frequency.value
        print devs
        print 'Configuration finished.'
        sv1 = Slit_1_Top.value
        sh1 = Slit_1_Bottom.value
        vftz = vftz_value
        vptz = vptz_value
        sv2 = Slit_2_Top.value
        sh2 = Slit_2_Bottom.value
        vrcz = vrcz_value
        rco = Radial_Collimator_Frequency.value
        mchs = Fermi_Chopper_1_Frequency.value
        schs = Fermi_Chopper_2_Frequency.value
    else:
        print 'Configuration aborted.'

def set_prof_value(name, value):
    if value == None:
        value = ''
    __UI__.setPreference(name, value)
    
# Use below example to create a new Plot
# Plot4 = Plot(title = 'new plot')

# This function is called when pushing the Run button in the control UI.
def __run_script__(fns):
    pass
    
def __dispose__():
    pass
