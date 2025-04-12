String getLimitedWord(String? address, int maxLength) {
  if (address == null || address.isEmpty) return "";
  return address.length > maxLength ? address.substring(0, maxLength) + '...' : address;
}
