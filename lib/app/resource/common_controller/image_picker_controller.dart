// image_picker_controller.dart
import 'package:abo_halab_app/app/resource/app_constant/import_list.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController {
  var selectedImagePath = ''.obs;
  var selectedBannerPath = ''.obs;
  var selectedImages = <String>[].obs;

  var fileName = ''.obs;


  Future<void> pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      selectedImagePath.value = pickedFile.path;
      selectedBannerPath.value = pickedFile.path;
    }
  }
  Future<void> profilePickImage(ImageSource source) async {
    await pickImage(source);
  }


  /// Function to pick multiple images
  Future<void> pickMultipleImages() async {
    final List<XFile>? pickedFiles = await ImagePicker().pickMultiImage();
    if (pickedFiles != null && pickedFiles.isNotEmpty) {
      selectedImages.assignAll(pickedFiles.map((file) => file.path).toList());
    }
  }
  Future<void> multiplePickBannerImage() async {
    await pickMultipleImages();
  }

  void removeImage(String path) {
    selectedImages.remove(path);
  }


  Future<void> pickPDF() async {
    // Open the file picker dialog with PDF filter
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null && result.files.isNotEmpty) {
      String selectedFile = result.files.single.name;
      if (selectedFile.endsWith('.pdf')) {
        fileName.value = selectedFile;
      } else {
        // Show a Snackbar message for invalid file type
        Get.snackbar(
          'Invalid File Type',
          'Please select a PDF file.',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
        fileName.value = '';
      }
    } else {
      // Show a Snackbar message if no file is selected
      Get.snackbar(
        'No File Selected',
        'Please select a file.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.orange,
        colorText: Colors.white,
      );
      fileName.value = '';
    }
  }
  // Function to remove (reset) the selected file
  void removePDF() {
    fileName.value = '';
    Get.rawSnackbar(
      messageText: Text(
        'File removed',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
