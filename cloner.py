import torch
from TTS.api import TTS

device = "cuda" if torch.cuda.is_available() else "cpu"

tts = TTS("tts_models/multilingual/multi-dataset/xtts_v2").to(device)

def cloner(text,lang,input_wav,output_file):
    tts.tts_to_file(text=text, speaker_wav=input_wav, language=lang, file_path=output_file)