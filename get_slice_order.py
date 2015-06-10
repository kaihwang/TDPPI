import extract_dicominfo
import sys

dicom_file = sys.stdin.read().strip('\n')
afni_slice_order, fsl_slice_order = extract_dicominfo.get_sliceorder(dicom_file)

print fsl_slice_order
