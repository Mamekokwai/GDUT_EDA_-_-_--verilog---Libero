# Created by Microsemi Libero Software 11.9.1.0
# Sun Dec 29 16:12:46 2024

# (NEW DESIGN)

# create a new design
new_design -name "_3always" -family "ProASIC3"

# set default back-annotation base-name
set_defvar "BA_NAME" "_3always_ba"
set_defvar "IDE_DESIGNERVIEW_NAME" {Impl1}
set_defvar "IDE_DESIGNERVIEW_COUNT" "1"
set_defvar "IDE_DESIGNERVIEW_REV0" {Impl1}
set_defvar "IDE_DESIGNERVIEW_REVNUM0" "1"
set_defvar "IDE_DESIGNERVIEW_ROOTDIR" {D:\GDUT_EDA_Libero_verilog code\three_always\designer}
set_defvar "IDE_DESIGNERVIEW_LASTREV" "1"

# set working directory
set_defvar "DESDIR" "D:/GDUT_EDA_Libero_verilog code/three_always/designer/impl1"

# set back-annotation output directory
set_defvar "BA_DIR" "D:/GDUT_EDA_Libero_verilog code/three_always/designer/impl1"

# enable the export back-annotation netlist
set_defvar "BA_NETLIST_ALSO" "1"

# set EDIF options
set_defvar "EDNINFLAVOR" "GENERIC"

# set HDL options
set_defvar "NETLIST_NAMING_STYLE" "VERILOG"

# setup status report options
set_defvar "EXPORT_STATUS_REPORT" "1"
set_defvar "EXPORT_STATUS_REPORT_FILENAME" "_3always.rpt"

# legacy audit-mode flags (left here for historical reasons)
set_defvar "AUDIT_NETLIST_FILE" "1"
set_defvar "AUDIT_DCF_FILE" "1"
set_defvar "AUDIT_PIN_FILE" "1"
set_defvar "AUDIT_ADL_FILE" "1"

# import of input files
import_source  \
-format "edif" -edif_flavor "GENERIC" -netlist_naming "VERILOG" {../../synthesis/_3always.edn}

# export translation of original netlist
export -format "verilog" {../../synthesis/_3always.v}
