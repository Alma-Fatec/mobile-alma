import 'package:flutter/material.dart';

class AudioSpeakerController extends ValueNotifier<AudioControls> {
  AudioSpeakerController(AudioControls control) : super(control);
}

class AudioControls {
  AudioControls({this.file, this.replay});

  String? file;
  bool? replay;
}