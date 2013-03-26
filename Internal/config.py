import time
from org.gumtree.gumnix.sics.control.events import DynamicControllerListenerAdapter
from org.gumtree.gumnix.sics.control import IStateMonitorListener
from org.gumtree.gumnix.sics.io import SicsProxyListenerAdapter
from org.eclipse.swt.events import DisposeListener
from org.eclipse.swt.widgets import TypedListener
import sys, os, math, traceback
sys.path.append(str(os.path.dirname(get_project_path('Internal'))))
from Internal import sicsext, HISTORY_KEY_WORDS
from au.gov.ansto.bragg.nbi.ui.scripting import ConsoleEventHandler
from org.eclipse.swt.widgets import Display
from java.lang import Runnable
from java.lang import System
from java.io import File
from time import strftime, localtime
from gumpy.commons import sics

# Script control setup area
# script info
__script__.title = 'Pelican Configuration'
__script__.version = '1.0'
__buffer_logger__ = open('W:/data/current/reports/LogFile.txt', 'a')
__history_logger__ = open('W:/data/current/reports/History.txt', 'a')

print 'Waiting for SICS connection'
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
#Proposal_Number = Par('string', '')
Experimental_Team = Par('string', '')
#Local_Contact = Par('string', '')
Experiment_Title = Par('string', '')
Sample_Name = Par('string', '')
act1 = Act('exp_setup()', 'Apply Change to Experiment Setup')
g1.add(Experimental_Team, Experiment_Title, Sample_Name, act1)
#g1.add(Proposal_Number, Experimental_Team, Local_Contact, 
#       Experiment_Title, Sample_Name, act1)
#pnumber = get_prof_value('pelican.proposal.number')
#if pnumber:
#    Proposal_Number.value = pnumber
#lcontact = get_prof_value('pelican.local.contract')
#if lcontact :
#    Local_Contact.value = lcontact
def exp_setup():
#    set_prof_value('pelican.proposal.number', Proposal_Number.value)
#    set_prof_value('pelican.local.contract', Local_Contact.value)
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
Slit_1_Vertical = Par('float', 0)
Slit_1_Horizontal = Par('float', 0)
Fermi_Chopper_1_Frequency = Par('float', 0)
Fermi_Chopper_1_Frame_Overlap_Ratio = Par('float', 0)
Fermi_Chopper_1_Frame_Overlap_Ratio.enabled = False
Second_Order_Filter = Par('string', '', options = ['none','graphite','Be'])
Polariser = Par('string', '', options = ['none','polariser','collimator'])
Fermi_Chopper_2_Frequency = Par('float', 0)
Fermi_Chopper_2_Time_Focussing = Par('bool', False)
Fermi_Chopper_2_Time_Focussing.enabled = False
Slit_2_Vertical = Par('float', 0)
Slit_2_Horizontal = Par('float', 0)
Radial_Collimator = Par('bool', False)
Radial_Collimator_Frequency = Par('float', 0)
Radial_Collimator_Frequency.enabled = False
Sample_Tank_Angle = Par('float', 0)
Sample_Tank_Angle.enabled = False
act2 = Act('ins_config()', 'Apply Change to Instrument Configuration')

g2.add(Wavelength, Moncohromator_Vertical_Focussing, 
       Monochromator_Time_Focussing, Slit_1_Vertical, Slit_1_Horizontal, 
       Fermi_Chopper_1_Frequency, Fermi_Chopper_1_Frame_Overlap_Ratio, 
       Second_Order_Filter, Polariser, Fermi_Chopper_2_Frequency, 
       Fermi_Chopper_2_Time_Focussing, 
       Slit_2_Vertical, Slit_2_Horizontal, Radial_Collimator, 
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
        sv1_precision = float(sicsext.runCommand('sv1 precision'))
        Slit_1_Vertical.value = sv1
        sh1 = sics.getValue('sh1').getFloatData()
        sh1_precision = float(sicsext.runCommand('sh1 precision'))
        Slit_1_Horizontal.value = sh1
        mchs = sics.getValue('mchs').getFloatData()
        mchs_precision = float(sicsext.runCommand('mchs precision'))
        Fermi_Chopper_1_Frequency.value = mchs
        schs = sics.getValue('schs').getFloatData()
        schs_precision = float(sicsext.runCommand('schs precision'))
        Fermi_Chopper_2_Frequency.value = schs
        vftz_value = round(sics.getValue('vftz').getFloatData())
        if vftz_value == 1:
            Second_Order_Filter.value = 'graphite'
        elif vftz_value == 2:
            Second_Order_Filter.value = 'none'
        elif vftz_value == 3:
            Second_Order_Filter.value = 'Be'
        else:
            Second_Order_Filter.value = 'none'
        vftz = Second_Order_Filter.value
        vptz_value = round(sics.getValue('vptz').getFloatData())
        if vptz_value == 3:
            Polariser.value = 'polariser'
        elif vptz_value == 2:
            Polariser.value = 'none'
        elif vptz_value == 1:
            Polariser.value = 'collimator'
        else:
            Polariser.value = 'none'
        vptz = Polariser.value
        vrcz_value = round(sics.getValue('vrcz').getFloatData())
        if vrcz_value == 1:
            Radial_Collimator.value = True
        elif vrcz_value == 2:
            Radial_Collimator.value = False
        vrcz = Radial_Collimator.value
        sv2 = sics.getValue('sv2').getFloatData()
        sv2_precision = float(sicsext.runCommand('sv2 precision'))
        Slit_2_Vertical.value = sv2
        sh2 = sics.getValue('sh2').getFloatData()
        sh2_precision = float(sicsext.runCommand('sh2 precision'))
        Slit_2_Horizontal.value = sh2
        rco_speed = float(sicsext.runCommand('rco maxSpeed'))
        rco_up_lim = float(sicsext.runCommand('rco softupperlim'))
        rco_low_lim = float(sicsext.runCommand('rco softlowerlim'))
        rco_freq = rco_speed / (rco_up_lim - rco_low_lim) / 2
        Radial_Collimator_Frequency.value = rco_freq
        sta = sics.getValue('stth').getFloatData()
        Sample_Tank_Angle.value = sta
        __initialised__ = True
    except:
        __trial_count__ += 1
        time.sleep(0.2)


def ins_config():
    global sv1, sh1, sv2, sh2, vftz, vptz, vrcz, rco, mchs, schs, rco_freq, sv1_precision, \
            sh1_precision, sv2_precision, sh2_precision, mchs_precision, schs_precision
    if confirm('Warning: this will run the SICS commands to drive the real devices of Pelican. To continue, press OK.'):
        slog('Start configuration.')
        devs = dict()
        if abs(sv1 - Slit_1_Vertical.value) > sv1_precision :
            devs['sv1'] = Slit_1_Vertical.value
            slog('drive sv1 ' + str(Slit_1_Vertical.value))
        else :
            sv1_new = sics.getValue('sv1').getFloatData()
            if sv1 != sv1_new :
                rp = confirm('Slit_1_Vertical has been moved to ' + str(sv1_new) + ' since last update. ' \
                    + 'Do you want to drive it back to ' + str(sv1) + '?')
                if rp :
                    devs['sv1'] = Slit_1_Vertical.value
                    slog('drive sv1 ' + str(Slit_1_Vertical.value))
                else :
                    Slit_1_Vertical.value = sv1_new
                    sv1 = sv1_new
        if abs(sh1 - Slit_1_Horizontal.value) > sh1_precision:
            devs['sh1'] = Slit_1_Horizontal.value
            slog('drive sh1 ' + str(Slit_1_Horizontal.value))
        else :
            sh1_new = sics.getValue('sh1').getFloatData()
            if sh1 != sh1_new :
                rp = confirm('Slit_1_Horizontal has been moved to ' + str(sh1_new) + ' since last update. ' \
                    + 'Do you want to drive it back to ' + str(sh1) + '?')
                if rp :
                    devs['sh1'] = Slit_1_Horizontal.value
                    slog('drive sh1 ' + str(Slit_1_Horizontal.value))
                else :
                    Slit_1_Horizontal.value = sh1_new
                    sh1 = sh1_new
        if abs(mchs - Fermi_Chopper_1_Frequency.value) > mchs_precision:
            devs['mchs'] = Fermi_Chopper_1_Frequency.value
            slog('drive mchs ' + str(Fermi_Chopper_1_Frequency.value))
        else :
            mchs_new = sics.getValue('mchs').getFloatData()
            if mchs != mchs_new :
                rp = confirm('Fermi_Chopper_1_Frequency has been changed to ' + str(mchs_new) + ' since last update. ' \
                    + 'Do you want to change it back to ' + str(mchs) + '?')
                if rp :
                    devs['mchs'] = Fermi_Chopper_1_Frequency.value
                    slog('drive mchs ' + str(Fermi_Chopper_1_Frequency.value))
                else :
                    Fermi_Chopper_1_Frequency.value = mchs_new
                    mchs = mchs_new
        if abs(schs - Fermi_Chopper_2_Frequency.value) > schs_precision:
            devs['schs'] = Fermi_Chopper_2_Frequency.value
            slog('drive schs ' + str(Fermi_Chopper_2_Frequency.value))
        else :
            schs_new = sics.getValue('schs').getFloatData()
            if schs != schs_new :
                rp = confirm('Fermi_Chopper_2_Frequency has been changed to ' + str(schs_new) + ' since last update. ' \
                    + 'Do you want to change it back to ' + str(schs) + '?')
                if rp :
                    devs['schs'] = Fermi_Chopper_2_Frequency.value
                    slog('drive schs ' + str(Fermi_Chopper_2_Frequency.value))
                else :
                    Fermi_Chopper_2_Frequency.value = schs_new
                    schs = schs_new
        vftz_value = str(Second_Order_Filter.value)
        if vftz != vftz_value:
            if vftz_value == 'graphite':
                 devs['vftz'] = 1
                 slog('drive vftz 1')
            elif vftz_value == 'none':
                 devs['vftz'] = 2
                 slog('drive vftz 2')
            elif vftz_value == 'Be':
                 devs['vftz'] = 3
                 slog('drive vftz 3')
        else :
            vftz_float_new = round(sics.getValue('vftz').getFloatData())
            if vftz_float_new == 1:
                vftz_new = 'graphite'
            elif vftz_float_new == 2:
                vftz_new = 'none'
            elif vftz_float_new == 3:
                vftz_new = 'Be'
            else:
                vftz_new = 'none'
            if vftz != vftz_new :
                rp = confirm('Second_Order_Filter has been changed to ' + vftz_new + ' since last update. ' \
                    + 'Do you want to change it back to ' + vftz + '?')
                if rp :
                    if vftz == 'graphite':
                         devs['vftz'] = 1
                         slog('drive vftz 1')
                    elif vftz == 'none':
                         devs['vftz'] = 2
                         slog('drive vftz 2')
                    elif vftz == 'Be':
                         devs['vftz'] = 3
                         slog('drive vftz 3')
                else :
                    Second_Order_Filter.value = vftz_new
                    vftz = vftz_new
        vptz_value = str(Polariser.value)
        if vptz != vptz_value :
            if vptz_value == 'polariser':
                 devs['vptz'] = 3
                 slog('drive vptz 3')
            elif vptz_value == 'none':
                 devs['vptz'] = 2
                 slog('drive vptz 2')
            elif vptz_value == 'collimator':
                 devs['vptz'] = 1
                 slog('drive vptz 1')
        else :
            vptz_float_new = round(sics.getValue('vptz').getFloatData())
            if vptz_float_new == 1:
                vptz_new = 'collimator'
            elif vptz_float_new == 2:
                vptz_new = 'none'
            elif vptz_float_new == 3:
                vptz_new = 'polariser'
            else:
                vptz_new = 'none'
            if vptz != vptz_new :
                rp = confirm('Polariser has been changed to ' + vptz_new + ' since last update. ' \
                    + 'Do you want to change it back to ' + vptz + '?')
                if rp :
                    if vptz == 'collimator':
                         devs['vptz'] = 1
                         slog('drive vptz 1')
                    elif vptz == 'none':
                         devs['vptz'] = 2
                         slog('drive vptz 2')
                    elif vptz == 'polariser':
                         devs['vptz'] = 3
                         slog('drive vptz 3')
                else :
                    Polariser.value = vptz_new
                    vptz = vptz_new
        if abs(sv2 - Slit_2_Vertical.value) > sv2_precision:
            devs['sv2'] = Slit_2_Vertical.value
            slog('drive sv2 ' + str(Slit_2_Vertical.value))
        else :
            sv2_new = sics.getValue('sv2').getFloatData()
            if sv2 != sv2_new :
                rp = confirm('Slit_2_Vertical has been moved to ' + str(sv2_new) + ' since last update. ' \
                    + 'Do you want to drive it back to ' + str(sv2) + '?')
                if rp :
                    devs['sv2'] = Slit_2_Vertical.value
                    slog('drive sv2 ' + str(Slit_2_Vertical.value))
                else :
                    Slit_2_Vertical.value = sv2_new
                    sv2 = sv2_new
        if abs(sh2 - Slit_2_Horizontal.value) > sh2_precision:
            devs['sh2'] = Slit_2_Horizontal.value
            slog('drive sh2 ' + str(Slit_2_Horizontal.value))
        else :
            sh2_new = sics.getValue('sh2').getFloatData()
            if sh2 != sh2_new :
                rp = confirm('Slit_2_Horizontal has been moved to ' + str(sh2_new) + ' since last update. ' \
                    + 'Do you want to drive it back to ' + str(sh2) + '?')
                if rp :
                    devs['sh2'] = Slit_2_Horizontal.value
                    slog('drive sh2 ' + str(Slit_2_Horizontal.value))
                else :
                    Slit_2_Horizontal.value = sh2_new
                    sh2 = sh2_new
        vrcz_value = Radial_Collimator.value
        if vrcz != vrcz_value :
            if vrcz_value :
                 devs['vrcz'] = 1
                 slog('drive vrcz 1')
            else :
                 devs['vrcz'] = 2
                 slog('drive vrcz 2')
        else :
            vrcz_float_new = round(sics.getValue('vrcz').getFloatData())
            if vrcz_float_new == 1:
                vrcz_new = True
            else:
                vrcz_new = False
            if vrcz != vrcz_new :
                if vrcz_new:
                    rp = confirm('Radial_Collimator has been enabled since last update. ' \
                        + 'Do you want to disable it?')
                else :
                    rp = confirm('Radial_Collimator has been disabled since last update. ' \
                        + 'Do you want to enable it?')
                if rp :
                    if vrcz :
                        devs['vrcz'] = 1
                        slog('drive vrcz 1')
                    else :
                        devs['vrcz'] = 2
                        slog('drive vrcz 2')
                else :
                    Radial_Collimator.value = vrcz_new
                    vrcz = vrcz_new
        rco_freq_changed = False
        if abs(rco_freq - Radial_Collimator_Frequency.value) > 1e-5:
            rco_up_lim = float(sicsext.runCommand('rco softupperlim'))
            rco_low_lim = float(sicsext.runCommand('rco softlowerlim'))
            rco_speed = Radial_Collimator_Frequency.value * 2 * (rco_up_lim - rco_low_lim)
            sics.execute('rco maxSpeed ' + str(Radial_Collimator_Frequency.value))
            slog('rco maxSpeed ' + str(Radial_Collimator_Frequency.value))
            rco_freq_changed = True
        else :
            rco_speed = float(sicsext.runCommand('rco maxSpeed'))
            rco_up_lim = float(sicsext.runCommand('rco softupperlim'))
            rco_low_lim = float(sicsext.runCommand('rco softlowerlim'))
            rco_freq_new = rco_speed / (rco_up_lim - rco_low_lim) / 2
            rco_old_speed = rco_freq * 2 * (rco_up_lim - rco_low_lim)
            if abs(rco_freq - rco_freq_new) > 1e-5 :
                rp = confirm('Radial_Collimator_Frequency has been changed to ' + str(rco_freq_new) + ' since last update. ' \
                    + 'Do you want to change it back to ' + str(rco_freq) + '?')
                if rp :
                    sics.execute('rco maxSpeed ' + str(rco_old_speed))
                    slog('rco maxSpeed ' + str(rco_old_speed))
                    rco_freq_changed = True
                else :
                    Radial_Collimator_Frequency.value = rco_freq_new
                    rco_freq = rco_freq_new
        if len(devs) > 0 :
            slog('driving ' + str(devs))
#            sics.multiDrive(devs)
        else :
            if not rco_freq_changed: 
                slog('no change in the configuration')
        slog('Configuration finished.')
        wl = sics.getValue('vwi').getFloatData()
        Wavelength.value = str(wl)
        sv1_new = sics.getValue('sv1').getFloatData()
        if abs(Slit_1_Vertical.value - sv1_new) > sv1_precision:
            slog('drive sv1 failed, current position is ' + str(sv1_new))
        else:
            sv1 = sv1_new
            Slit_1_Vertical.value = sv1
        sh1_new = sics.getValue('sh1').getFloatData()
        if abs(Slit_1_Horizontal.value - sh1_new) > sh1_precision:
            slog('drive sh1 failed, current position is ' + str(sh1_new))
        else:
            sh1 = sh1_new
            Slit_1_Horizontal.value = sh1
        mchs_new = sics.getValue('mchs').getFloatData()
        if abs(Fermi_Chopper_1_Frequency.value - mchs_new) > mchs_precision:
            slog('drive mchs failed, current position is ' + str(mchs_new))
        else:
            mchs = mchs_new
            Fermi_Chopper_1_Frequency.value = mchs
        schs_new = sics.getValue('schs').getFloatData()
        if abs(Fermi_Chopper_2_Frequency.value - schs_new) > schs_precision:
            slog('drive schs failed, current position is ' + str(schs_new))
        else:
            schs = schs_new
            Fermi_Chopper_2_Frequency.value = schs
        vftz_value = round(sics.getValue('vftz').getFloatData())
        if vftz_value == 1:
            vftz_new = 'graphite'
        elif vftz_value == 2:
            vftz_new = 'none'
        elif vftz_value == 3:
            vftz_new = 'Be'
        else:
            vftz_new = 'none'
        if Second_Order_Filter.value != vftz_new :
            slog('change Second_Order_Filter failed, current value is ' + vftz_new)
        else :
            vftz = vftz_new
        vptz_value = round(sics.getValue('vptz').getFloatData())
        if vptz_value == 3:
            vptz_new = 'polariser'
        elif vptz_value == 2:
            vptz_new = 'none'
        elif vptz_value == 1:
            vptz_new = 'collimator'
        else:
            vptz_new = 'none'
        if Polariser.value != vptz_new:
            slog('change Polariser failed, current value is ' + vptz_new)
        else :
            vptz = vptz_new
        vrcz_value = round(sics.getValue('vrcz').getFloatData())
        if vrcz_value == 1:
            vrcz_new = True
            vrcz_status = 'on'
        else:
            vrcz_new = False
            vrcz_status = 'off'
        if Radial_Collimator.value != vrcz_new:
            slog('change Radial_Collimator failed, current value is ' + vrcz_status)
        else:
            vrcz = vrcz_new
        sv2_new = sics.getValue('sv2').getFloatData()
        if abs(Slit_2_Vertical.value - sv2_new) > sv2_precision:
            slog('drive sv2 failed, current position is ' + str(sv2_new))
        else:
            sv2 = sv2_new
            Slit_2_Vertical.value = sv2
        sh2_new = sics.getValue('sh2').getFloatData()
        if abs(Slit_2_Horizontal.value - sh2_new) > sh2_precision:
            slog('drive sh2 failed, current position is ' + str(sh2_new))
        else:
            sh2 = sh2_new
            Slit_2_Horizontal.value = sh2
        rco_speed = float(sicsext.runCommand('rco maxSpeed'))
        rco_up_lim = float(sicsext.runCommand('rco softupperlim'))
        rco_low_lim = float(sicsext.runCommand('rco softlowerlim'))
        rco_freq_new = rco_speed / (rco_up_lim - rco_low_lim) / 2
        if abs(Radial_Collimator_Frequency.value - rco_freq_new) > 1e-5:
            slog('set Radial_Collimator_Frequency failed, current value is ' + str(rco_freq_new))
        else:
            rco_freq = rco_freq_new
            Radial_Collimator_Frequency.value = rco_freq
        sta = sics.getValue('stth').getFloatData()
        Sample_Tank_Angle.value = sta
    else:
        print 'Configuration aborted.'

def set_prof_value(name, value):
    if value == None:
        value = ''
    __UI__.setPreference(name, value)
    
def logBook(text):
    global __buffer_logger__, __history_logger__
    try:
        tsmp = strftime("[%Y-%m-%d %H:%M:%S]", localtime())
        __buffer_logger__.write(tsmp + ' ' + text + '\n')
        __buffer_logger__.flush()
        for item in HISTORY_KEY_WORDS:
            if text.startswith(item):
                __history_logger__.write(tsmp + ' ' + text + '\n')
                __history_logger__.flush()
    except:
        traceback.print_exc(file=sys.stdout)
        print 'failed to log'
    
def slog(text):
    logln(text + '\n')
    logBook(text)
    
# Use below example to create a new Plot
# Plot4 = Plot(title = 'new plot')

# This function is called when pushing the Run button in the control UI.
def __run_script__(fns):
    pass
    
def __dispose__():
    global __buffer_logger__, __history_logger__
    if __buffer_logger__:
        __buffer_logger__.close()
    if __history_logger__:
        __history_logger__.close()
    pass
