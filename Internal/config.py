from org.gumtree.gumnix.sics.control.controllers import ComponentData
from org.gumtree.gumnix.sics.control.events import DynamicControllerListenerAdapter
from gumpy.commons import logger
# Script control setup area
# script info
__script__.title = 'Instrument Control'
__script__.version = '1.0'

def slog(text):
    logger.log(text)
    
__listener_list__ = []
class __ValueListener__(DynamicControllerListenerAdapter):
    
    def __init__(self, par):
        self.par = par
        pass
    
    def valueChanged(self, ctr, newValue):
#        slog(self.par.title + ' = ' + newValue.getStringData())
        if self.par.type == 'STRING':
            self.par.value = newValue.getStringData()
        elif self.par.type == 'FLOAT':
            self.par.value = newValue.getFloatData()
        elif self.par.type == 'INT':
            self.par.value = newValue.getIntData()

def init_par(par, title, cmd, path, options = None, option_values = None, bool_values = None):
    global __listener_list__
    par.title = title
    par.cmd = cmd
    if path is None or len(path) == 0:
        return
    controller = sics.getDeviceController(path)
    if controller != None:
        if options != None:
            value = round(controller.getValue().getFloatData())
            try:
                idx = option_values.index(value)
                par.value = options[idx]
            except:
                pass
        else:
            if par.type == 'STRING':
                par.value = controller.getValue().getStringData()
            elif par.type == 'FLOAT':
                par.value = controller.getValue().getFloatData()
            elif par.type == 'INT':
                par.value = controller.getValue().getIntData()
            elif par.type == 'BOOL':
                if bool_values != None:
                    value = round(controller.getValue().getFloatData())
                    if value == bool_values[1]:
                        par.value = True
                    else:
                        par.value = False
                else:
                    par.value = bool(round(controller.getValue().getFloatData()))
        listener = __ValueListener__(par)
        controller.addComponentListener(listener)
        listener.controller = controller
        __listener_list__.append(listener)
    par.path = path
    if options != None:
        par.options = options
    if option_values != None:
        par.option_values = option_values
    if bool_values != None:
        par.bool_values = bool_values
                        
#def par_changed(par):
#    slog(par.title + ' = ' + str(par.value))
#    if par.options != None:
#        vlist = eval(par.option_values)
#        idx = par.options.index(par.value)
#        value = vlist[idx]
#        sics.execute(par.cmd + ' ' + str(value))
#    else:
#        if par.type == 'BOOL':
#            if par.bool_values != None:
#                if par.value:
#                    value = par.bool_values[1]
#                else:
#                    value = par.bool_values[0]
#                sics.execute(par.cmd + ' ' + str(value))
#            else:
#                execute(par.cmd + ' ' + str(int(value)))
#        else:
#            sics.execute(par.cmd + ' ' + str(par.value))
    
def par_changed(par):
    path = par.path
    if path is None or len(path.strip()) == 0:
        return
    controller = sics.getDeviceController(path)
    if controller != None:
        if par.options != None:
            value = controller.getValue().getFloatData()
            try:
                idx = par.options.index(par.value)
                new_value = eval(par.option_values)[idx]
                if value != new_value:
                    sics.drive(path, new_value)
                    slog('drive ' + par.title + ' to ' + str(par.value))
            except:
                print 'failed to drive ' + path
        else:
            if par.type == 'STRING' :
                value = controller.getValue().getStringData()
                if par.value != value:
                    controller.setTargetValue(ComponentData.createData(par.value))
                    controller.commitTargetValue(None)
                    slog('set ' + par.title + ' to ' + par.value)
            elif par.type == 'FLOAT' :
                value = controller.getValue().getFloatData()
                if par.value != value:
                    sics.drive(path, par.value)
                    slog('drive ' + par.title + ' to ' + str(par.value))
            elif par.value == 'INT':
                value = controller.getValue().getIntData()
                if par.value != value:
                    sics.drive(path, par.value)
                    slog('drive ' + par.title + ' to ' + str(par.value))
            elif par.type == 'BOOL':
                if par.bool_values != None:
                    value = controller.getValue().getFloatData()
                    if value != par.bool_values[int(par.value)] :
                        sics.drive(path, par.bool_values[int(par.value)])
                        slog('set ' + par.title + ' to ' + str(par.value))
                else:
                    sics.drive(path, int(par.value))
                    slog('set ' + par.title + ' to ' + str(par.value))
    else:
        slog('can\'t find ' + path)
    
g_exp_info = Group('Experiment Information')

user_name = Par('string', '', command = 'par_changed(user_name)')
init_par(user_name, 'User Name', 'user', '/user/name')

e_title = Par('string', '', command = 'par_changed(e_title)')
init_par(e_title, 'Experiment Title', 'title', '/experiment/title')

sample_name = Par('string', '', command = 'par_changed(sample_name)')
init_par(sample_name, 'Sample Name', 'samplename', '/sample/name')

g_exp_info.add(user_name, e_title, sample_name)

g_fermi = Group('Fermi Chopper')

Fermi_Chopper_1_Frequency = Par('float', 0, command = 'par_changed(Fermi_Chopper_1_Frequency)')
init_par(Fermi_Chopper_1_Frequency, 'Chopper 1 Frequency', 'run mchs', 'mchs')

Fermi_Chopper_1_Frame_Overlap_Ratio = Par('float', 0, command = 'par_changed(Fermi_Chopper_1_Frame_Overlap_Ratio)')
init_par(Fermi_Chopper_1_Frame_Overlap_Ratio, 'Chopper 1 Frame Overlap Ratio', '', '')
Fermi_Chopper_1_Frame_Overlap_Ratio.enabled = False

Fermi_Chopper_2_Frequency = Par('float', 0, command = 'par_changed(Fermi_Chopper_2_Frequency)')
init_par(Fermi_Chopper_2_Frequency, 'Chopper 2 Frequency', 'run schs', 'schs')

Fermi_Chopper_2_Time_Focussing = Par('bool', False)
init_par(Fermi_Chopper_2_Time_Focussing, 'Chopper 2 Time Focussing', '', '')
Fermi_Chopper_2_Time_Focussing.enabled = False

g_fermi.add(Fermi_Chopper_1_Frequency, Fermi_Chopper_1_Frame_Overlap_Ratio, \
            Fermi_Chopper_2_Frequency, Fermi_Chopper_2_Time_Focussing)

g_beam = Group('Beam Setup')

Wavelength = Par('string', '')
init_par(Wavelength, 'Wavelength', 'drive vwi', '/instrument/crystal/wavelength')
Wavelength.enabled = False

Moncohromator_Vertical_Focussing = Par('bool', False)
Moncohromator_Vertical_Focussing.title = 'Moncohromator Vertical Focussing'
Moncohromator_Vertical_Focussing.enabled = False

Monochromator_Time_Focussing = Par('bool', False)
Monochromator_Time_Focussing.title = 'Monochromator Time Focussing'
Monochromator_Time_Focussing.enabled = False

Slit_1_Vertical = Par('float', 0, command = 'par_changed(Slit_1_Vertical)')
init_par(Slit_1_Vertical, 'Slit 1 Vertical', 'run sv1', 'sv1')
Slit_1_Horizontal = Par('float', 0, command = 'par_changed(Slit_1_Horizontal)')
init_par(Slit_1_Horizontal, 'Slit 1 Horizontal', 'run sh1', 'sh1')

Second_Order_Filter = Par('string', '', command = 'par_changed(Second_Order_Filter)')
init_par(Second_Order_Filter, 'Second Order Filter', 'run vftz', 'vftz', \
         options = ['graphite','none','Be'], option_values = [1, 2, 3])

Polariser = Par('string', '', command = 'par_changed(Polariser)')
init_par(Polariser, 'Polariser', 'run vptz', 'vptz', \
         options = ['collimator','none','polariser'], option_values = [1, 2, 3])

Slit_2_Vertical = Par('float', 0, command = 'par_changed(Slit_2_Vertical)')
init_par(Slit_2_Vertical, 'Slit 2 Vertical', 'run sv2', 'sv2')

Slit_2_Horizontal = Par('float', 0, command = 'par_changed(Slit_2_Horizontal)')
init_par(Slit_2_Horizontal, 'Slit 2 Horizontal', 'run sh2', 'sh2')

Radial_Collimator = Par('bool', False, command = 'par_changed(Radial_Collimator)')
init_par(Radial_Collimator, 'Radial Collimator', 'run vrcz', 'vrcz', \
         bool_values = [1, 2])

Radial_Collimator_Frequency = Par('float', 0)
init_par(Radial_Collimator_Frequency, 'Radial Collimator Frequency', '', '')
Radial_Collimator_Frequency.enabled = False

g_beam.add(Wavelength, Moncohromator_Vertical_Focussing, Monochromator_Time_Focussing,\
           Slit_1_Vertical, Slit_1_Horizontal, Slit_2_Vertical, Slit_2_Horizontal, \
           Radial_Collimator, Radial_Collimator_Frequency, Second_Order_Filter, Polariser)

g_sample = Group('Sample Tank')

Sample_Tank_Angle = Par('float', 0)
init_par(Sample_Tank_Angle, 'Sample Tank Angle', '', '')
Sample_Tank_Angle.enabled = False

g_sample.add(Sample_Tank_Angle)

# Use below example to create a button
#act1 = Act('act1_changed()', 'click me') 
#def act1_changed():
#    print 'act1 clicked'
    
# Use below example to create a new Plot
# Plot4 = Plot(title = 'new plot')

# This function is called when pushing the Run button in the control UI.
def __run_script__(fns):
    # Use the provided resources, please don't remove.
    global Plot1
    global Plot2
    global Plot3
    
    # check if a list of file names has been given
    if (fns is None or len(fns) == 0) :
        print 'no input datasets'
    else :
        for fn in fns:
            # load dataset with each file name
            ds = df[fn]
            print ds.shape
    print arg1_name.value
    
def __dispose__():
    global __listener_list__
    print 'run dispose'
    for listener in __listener_list__:
        listener.controller.removeComponentListener(listener)
    __listener_list__ = None
