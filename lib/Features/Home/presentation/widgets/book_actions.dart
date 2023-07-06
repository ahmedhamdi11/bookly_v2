import 'package:bookly_v2/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38.0),
      child: Row(
        children: [
          // if (book.accessInfo?.pdf?.downloadLink != null)
          Expanded(
            child: CustomButton(
              onPressed: () {
                // openURl(url: book.accessInfo?.pdf?.downloadLink);
              },
              btnText: 'download',
              backgroundColor: Colors.white,
              btnTextColor: Colors.black,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16.0),
                bottomLeft: Radius.circular(16.0),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                // openURl(url: book.volumeInfo.previewLink);
              },
              btnText: false //book.volumeInfo.previewLink == null
                  ? 'preview unavailable'
                  : 'preview',
              borderRadius: false // book.accessInfo?.pdf?.downloadLink == null
                  ? BorderRadius.circular(16.0)
                  : const BorderRadius.only(
                      topRight: Radius.circular(16.0),
                      bottomRight: Radius.circular(16.0),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
