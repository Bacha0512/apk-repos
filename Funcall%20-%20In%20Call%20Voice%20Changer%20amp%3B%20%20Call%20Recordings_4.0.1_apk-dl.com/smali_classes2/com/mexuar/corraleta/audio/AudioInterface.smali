.class public interface abstract Lcom/mexuar/corraleta/audio/AudioInterface;
.super Ljava/lang/Object;
.source "AudioInterface.java"


# virtual methods
.method public abstract changedProps()V
.end method

.method public abstract cleanUp()V
.end method

.method public abstract codecPrefString()Ljava/lang/String;
.end method

.method public abstract getByFormat(Ljava/lang/Integer;)Lcom/mexuar/corraleta/audio/AudioInterface;
.end method

.method public abstract getFormatBit()I
.end method

.method public abstract getSampSz()I
.end method

.method public abstract playAudioStream(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readDirect([B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readWithTime([B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract sampleRecord(Lcom/mexuar/corraleta/audio/SampleListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setAudioSender(Lcom/mexuar/corraleta/protocol/AudioSender;)V
.end method

.method public abstract startPlay()V
.end method

.method public abstract startRec()J
.end method

.method public abstract startRinging()V
.end method

.method public abstract stopPlay()V
.end method

.method public abstract stopRec()V
.end method

.method public abstract stopRinging()V
.end method

.method public abstract supportedCodecs()Ljava/lang/Integer;
.end method

.method public abstract write([BJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeDirect([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
