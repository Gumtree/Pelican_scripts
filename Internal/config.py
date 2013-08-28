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
__time_out__ = 1
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
        slog('failed to log')
    
def slog(text):
    logln(text + '\n')
    logBook(text)
    
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

def get_sics_value(name, dtype = str):
    global __time_out__
    __count__ = 0
    name_str = str(name)
    slog('loading ' + name_str)
    while __count__ < __time_out__:
        try:
            item = sics.getValue(name_str)
            if dtype is str:
                return item.getStringData()
            elif dtype is float:
                return item.getFloatData()
            elif dtype is int:
                return item.getIntData()
            else:
                return item
        except:
            __count__ += 0.2
            time.sleep(0.2)
    slog('time out in loading ' + name_str)
    
def run_sics_command(comm, dtype = str):
    global __time_out__
    __count__ = 0
    comm_str = str(comm)
    slog('running ' + comm_str)
    while __count__ < __time_out__:
        try:
            item = sicsext.runCommand(comm_str)
            if dtype is str:
                return item
            elif dtype is float:
                return float(item)
            elif dtype is int:
                return int(item)
            else:
                return item
        except:
            __count__ += 0.2
            time.sleep(0.2)
    slog('time out in running ' + comm_str)
    return None
    
try:
    Experimental_Team.value = get_sics_value('user')
    Experiment_Title.value = get_sics_value('title')
    Sample_Name.value = get_sics_value('samplename')
    wl = get_sics_value('vwi', float)
    if not wl is None:
        Wavelength.value = str(wl)
    sv1 = get_sics_value('sv1', float)
    sv1_precision = None
    if not sv1 is None:
        sv1_precision = run_sics_command('sv1 precision', float)
        Slit_1_Vertical.value = sv1
    sh1 = get_sics_value('sh1', float)
    sh1_precision = None
    if not sh1 is None:
        sh1_precision = run_sics_command('sh1 precision', float)
        Slit_1_Horizontal.value = sh1
    mchs = get_sics_value('mchs', float)
    mchs_precision = None
    if not mchs is None:
        mchs_precision = run_sics_command('mchs precision', float)
        Fermi_Chopper_1_Frequency.value = mchs
    schs = get_sics_value('schs', float)
    schs_precision = None
    if not schs is None:
        schs_precision = run_sics_command('schs precision', float)
        Fermi_Chopper_2_Frequency.value = schs
    vftz_value = get_sics_value('vftz', float)
    if not vftz_value is None:
        vftz_value = round(vftz_value)
    if vftz_value == 1:
        Second_Order_Filter.value = 'graphite'
    elif vftz_value == 2:
        Second_Order_Filter.value = 'none'
    elif vftz_value == 3:
        Second_Order_Filter.value = 'Be'
    else:
        Second_Order_Filter.value = 'none'
    vftz = Second_Order_Filter.value
    vptz_value = get_sics_value('vptz', float)
    if not vptz_value is None:
        vptz_value = round(vptz_value)
    if vptz_value == 3:
        Polariser.value = 'polariser'
    elif vptz_value == 2:
        Polariser.value = 'none'
    elif vptz_value == 1:
        Polariser.value = 'collimator'
    else:
        Polariser.value = 'none'
    vptz = Polariser.value
    vrcz_value = get_sics_value('vrcz', float)
    if vrcz_value is None:
        vrcz_value = round(vrcz_value)
    if vrcz_value == 1:
        Radial_Collimator.value = False
    elif vrcz_value == 2:
        Radial_Collimator.value = True
    vrcz = Radial_Collimator.value
    sv2 = get_sics_value('sv2', float)
    sv2_precision = None
    if not sv2 is None:
        sv2_precision = run_sics_command('sv2 precision', float)
        Slit_2_Vertical.value = sv2
    sh2 = get_sics_value('sh2', float)
    sh2_precision = None
    if not sh2 is None:
        sh2_precision = run_sics_command('sh2 precision', float)
        Slit_2_Horizontal.value = sh2
    rco_freq = None
    rco_speed = run_sics_command('rco maxSpeed', float)
    if not rco_speed is None:
        rco_up_lim = run_sics_command('rco softupperlim', float)
        rco_low_lim = run_sics_command('rco softlowerlim', float)
        rco_freq = rco_speed / (rco_up_lim - rco_low_lim) / 2
        if not rco_freq is None:
            Radial_Collimator_Frequency.value = rco_freq
    sta = get_sics_value('stth', float)
    if not sta is None:
        Sample_Tank_Angle.value = sta
except:
    slog('loading configuration page failed')

def ins_config():
    global sv1, sh1, sv2, sh2, vftz, vptz, vrcz, rco, mchs, schs, rco_freq, sv1_precision, \
            sh1_precision, sv2_precision, sh2_precision, mchs_precision, schs_precision
    if confirm('Warning: this will run the SICS commands to drive the real devices of Pelican. To continue, press OK.'):
        slog('Start configuration.')
        devs = dict()
        if not sv1 is None and abs(sv1 - Slit_1_Vertical.value) > sv1_precision :
            devs['sv1'] = Slit_1_Vertical.value
            slog('drive sv1 ' + str(Slit_1_Vertical.value))
        else :
            sv1_new = get_sics_value('sv1', float)
            if not sv1_new is None and sv1 != sv1_new :
                rp = confirm('Slit_1_Vertical has been moved to ' + str(sv1_new) + ' since last update. ' \
                    + 'Do you want to drive it back to ' + str(sv1) + '?')
                if rp :
                    devs['sv1'] = Slit_1_Vertical.value
                    slog('drive sv1 ' + str(Slit_1_Vertical.value))
                else :
                    Slit_1_Vertical.value = sv1_new
                    sv1 = sv1_new
        if not sh1 is None and abs(sh1 - Slit_1_Horizontal.value) > sh1_precision:
            devs['sh1'] = Slit_1_Horizontal.value
            slog('drive sh1 ' + str(Slit_1_Horizontal.value))
        else :
            sh1_new = get_sics_value('sh1', float)
            if not sh1_new is None and sh1 != sh1_new :
                rp = confirm('Slit_1_Horizontal has been moved to ' + str(sh1_new) + ' since last update. ' \
                    + 'Do you want to drive it back to ' + str(sh1) + '?')
                if rp :
                    devs['sh1'] = Slit_1_Horizontal.value
                    slog('drive sh1 ' + str(Slit_1_Horizontal.value))
                else :
                    Slit_1_Horizontal.value = sh1_new
                    sh1 = sh1_new
        if not mchs is None and abs(mchs - Fermi_Chopper_1_Frequency.value) > mchs_precision:
            devs['mchs'] = Fermi_Chopper_1_Frequency.value
            slog('drive mchs ' + str(Fermi_Chopper_1_Frequency.value))
        else :
            mchs_new = get_sics_value('mchs', float)
            if not mchs_new is None and mchs != mchs_new :
                rp = confirm('Fermi_Chopper_1_Frequency has been changed to ' + str(mchs_new) + ' since last update. ' \
                    + 'Do you want to change it back to ' + str(mchs) + '?')
                if rp :
                    devs['mchs'] = Fermi_Chopper_1_Frequency.value
                    slog('drive mchs ' + str(Fermi_Chopper_1_Frequency.value))
                else :
                    Fermi_Chopper_1_Frequency.value = mchs_new
                    mchs = mchs_new
        if not schs is None and abs(schs - Fermi_Chopper_2_Frequency.value) > schs_precision:
            devs['schs'] = Fermi_Chopper_2_Frequency.value
            slog('drive schs ' + str(Fermi_Chopper_2_Frequency.value))
        else :
            schs_new = get_sics_value('schs', float)
            if not schs_new is None and schs != schs_new :
                rp = confirm('Fermi_Chopper_2_Frequency has been changed to ' + str(schs_new) + ' since last update. ' \
                    + 'Do you want to change it back to ' + str(schs) + '?')
                if rp :
                    devs['schs'] = Fermi_Chopper_2_Frequency.value
                    slog('drive schs ' + str(Fermi_Chopper_2_Frequency.value))
                else :
                    Fermi_Chopper_2_Frequency.value = schs_new
                    schs = schs_new
        vftz_value = str(Second_Order_Filter.value)
        if not vftz is None and vftz != vftz_value:
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
            vftz_float_new = get_sics_value('vftz', float)
            if not vftz_float_new is None:
                vftz_float_new = round(vftz_float_new)
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
            vptz_float_new = get_sics_value('vptz', float)
            if not vptz_float_new is None:
                vptz_float_new = round(vptz_float_new)
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
            sv2_new = get_sics_value('sv2', float)
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
            sh2_new = get_sics_value('sh2', float)
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
                 devs['vrcz'] = 2
                 slog('drive vrcz 2')
            else :
                 devs['vrcz'] = 1
                 slog('drive vrcz 1')
        else :
            vrcz_float_new = get_sics_value('vrcz', float)
            if not vrcz_float_new is None:
                vrcz_float_new = round(vrcz_float_new)
                if vrcz_float_new == 2:
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
                            devs['vrcz'] = 2
                            slog('drive vrcz 2')
                        else :
                            devs['vrcz'] = 1
                            slog('drive vrcz 1')
                    else :
                        Radial_Collimator.value = vrcz_new
                        vrcz = vrcz_new
        rco_freq_changed = False
        if not rco_freq is None :
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
            sics.multiDrive(devs)
        else :
            if not rco_freq_changed: 
                slog('no change in the configuration')
        slog('Configuration finished.')
        wl = get_sics_value('vwi', float)
        if not wl is None:
            Wavelength.value = str(wl)
        sv1_new = get_sics_value('sv1', float)
        if not sv1_new is None:
            if abs(Slit_1_Vertical.value - sv1_new) > sv1_precision:
                slog('drive sv1 failed, current position is ' + str(sv1_new))
            else:
                sv1 = sv1_new
                Slit_1_Vertical.value = sv1
        sh1_new = get_sics_value('sh1', float)
        if not sh1_new is None:
            if abs(Slit_1_Horizontal.value - sh1_new) > sh1_precision:
                slog('drive sh1 failed, current position is ' + str(sh1_new))
            else:
                sh1 = sh1_new
                Slit_1_Horizontal.value = sh1
        mchs_new = get_sics_value('mchs', float)
        if not mchs_new is None:
            if abs(Fermi_Chopper_1_Frequency.value - mchs_new) > mchs_precision:
                slog('drive mchs failed, current position is ' + str(mchs_new))
            else:
                mchs = mchs_new
                Fermi_Chopper_1_Frequency.value = mchs
        schs_new = get_sics_value('schs', float)
        if not schs_new is None:
            if abs(Fermi_Chopper_2_Frequency.value - schs_new) > schs_precision:
                slog('drive schs failed, current position is ' + str(schs_new))
            else:
                schs = schs_new
                Fermi_Chopper_2_Frequency.value = schs
        vftz_value = get_sics_value('vftz', float)
        if not vftz_value is None:
            vftz_value = round(vftz_value)
            if vftz_value == 1:
                vftz_new = 'graphite'
            elif vftz_value == 2:
                vftz_new = 'none'
            elif vftz_value == 3:
                vftz_new = 'Be'
            else:
                vftz_new = 'none'
            if Second_Order_Filter.value != vftz_new :
                slog('change Second_Order_Filter failed, current value is ' + str(vftz_new))
            else :
                vftz = vftz_new
        vptz_value = get_sics_value('vptz', float)
        if not vptz_value is None:
            vptz_value = round(vptz_value)
            if vptz_value == 3:
                vptz_new = 'polariser'
            elif vptz_value == 2:
                vptz_new = 'none'
            elif vptz_value == 1:
                vptz_new = 'collimator'
            else:
                vptz_new = 'none'
            if Polariser.value != vptz_new:
                slog('change Polariser failed, current value is ' + str(vptz_new))
            else :
                vptz = vptz_new
        vrcz_value = get_sics_value('vrcz', float)
        if not vrcz_value is None:
            vrcz_value = round(vrcz_value)
            if vrcz_value == 2:
                vrcz_new = True
                vrcz_status = 'on'
            else:
                vrcz_new = False
                vrcz_status = 'off'
            if Radial_Collimator.value != vrcz_new:
                slog('change Radial_Collimator failed, current value is ' + str(vrcz_status))
            else:
                vrcz = vrcz_new
        sv2_new = get_sics_value('sv2', float)
        if not sv2_new is None : 
            if abs(Slit_2_Vertical.value - sv2_new) > sv2_precision:
                slog('drive sv2 failed, current position is ' + str(sv2_new))
            else:
                sv2 = sv2_new
                Slit_2_Vertical.value = sv2
        sh2_new = get_sics_value('sh2', float)
        if not sh2_new is None:
            if abs(Slit_2_Horizontal.value - sh2_new) > sh2_precision:
                slog('drive sh2 failed, current position is ' + str(sh2_new))
            else:
                sh2 = sh2_new
                Slit_2_Horizontal.value = sh2
        if not rco_freq is None:
            rco_speed = float(sicsext.runCommand('rco maxSpeed'))
            rco_up_lim = float(sicsext.runCommand('rco softupperlim'))
            rco_low_lim = float(sicsext.runCommand('rco softlowerlim'))
            rco_freq_new = rco_speed / (rco_up_lim - rco_low_lim) / 2
            if abs(Radial_Collimator_Frequency.value - rco_freq_new) > 1e-5:
                slog('set Radial_Collimator_Frequency failed, current value is ' + str(rco_freq_new))
            else:
                rco_freq = rco_freq_new
                Radial_Collimator_Frequency.value = rco_freq
        sta = get_sics_value('stth', float)
        if not sta is None:
            Sample_Tank_Angle.value = sta
    else:
        slog('Configuration aborted.')

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
    global __buffer_logger__, __history_logger__
    if __buffer_logger__:
        __buffer_logger__.close()
    if __history_logger__:
        __history_logger__.close()
    pass
