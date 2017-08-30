.class Lcom/twilio/client/impl/sound/WaveFile;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twilio/client/impl/sound/WaveFile$WaveFileException;
    }
.end annotation


# static fields
.field private static final AUDIO_FORMAT_LPCM:I = 0x1

.field private static final BITS_PER_SAMPLE:I = 0x10

.field private static final FMT_SUBCHUNK_SIZE:I = 0x10

.field private static final NUM_CHANNELS:I = 0x2

.field private static final OFF_AUDIO_FORMAT:I = 0x14

.field private static final OFF_BITS_PER_SAMPLE:I = 0x22

.field private static final OFF_CHUNK_ID:I = 0x0

.field private static final OFF_DATA_SUBCHUNK_ID:I = 0x24

.field private static final OFF_DATA_SUBCHUNK_SIZE:I = 0x28

.field private static final OFF_FMT_SUBCHUNK_ID:I = 0xc

.field private static final OFF_FMT_SUBCHUNK_SIZE:I = 0x10

.field private static final OFF_FORMAT:I = 0x8

.field private static final OFF_NUM_CHANNELS:I = 0x16

.field private static final OFF_SAMPLE_RATE:I = 0x18

.field private static final SAMPLE_RATE:I = 0xac44

.field private static final WAVE_HEADER_SIZE:I = 0x2c


# instance fields
.field private data:[B

.field private dataLength:I

.field private final is:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/twilio/client/impl/sound/WaveFile;->dataLength:I

    iput-object p1, p0, Lcom/twilio/client/impl/sound/WaveFile;->is:Ljava/io/InputStream;

    return-void
.end method

.method private final genId(Ljava/lang/String;)I
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method private final read16([BIZ)S
    .locals 2

    if-eqz p3, :cond_0

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    goto :goto_0
.end method

.method private final read16LE([BI)S
    .locals 2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/twilio/client/impl/sound/WaveFile;->read16([BIZ)S

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final read32([BIZ)I
    .locals 2

    if-eqz p3, :cond_0

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method private final read32BE([BI)I
    .locals 2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/twilio/client/impl/sound/WaveFile;->read32([BIZ)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final read32LE([BI)I
    .locals 2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/twilio/client/impl/sound/WaveFile;->read32([BIZ)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readData()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/twilio/client/impl/sound/WaveFile;->dataLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call validateHeaders() before readData()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/twilio/client/impl/sound/WaveFile;->dataLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/twilio/client/impl/sound/WaveFile;->data:[B

    iget-object v0, p0, Lcom/twilio/client/impl/sound/WaveFile;->is:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/twilio/client/impl/sound/WaveFile;->data:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iget v1, p0, Lcom/twilio/client/impl/sound/WaveFile;->dataLength:I

    if-eq v0, v1, :cond_1

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Data length too short, only got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method


# virtual methods
.method getData()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twilio/client/impl/sound/WaveFile;->data:[B

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/twilio/client/impl/sound/WaveFile;->readData()V

    :cond_0
    iget-object v0, p0, Lcom/twilio/client/impl/sound/WaveFile;->data:[B

    return-object v0
.end method

.method validateHeaders()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v2, 0x2c

    const/16 v3, 0x10

    new-array v0, v2, [B

    iget-object v1, p0, Lcom/twilio/client/impl/sound/WaveFile;->is:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WAVE data too short, got only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/twilio/client/impl/sound/WaveFile;->read32BE([BI)I

    move-result v1

    const-string v2, "RIFF"

    invoke-direct {p0, v2}, Lcom/twilio/client/impl/sound/WaveFile;->genId(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    new-instance v0, Lcom/twilio/client/impl/sound/WaveFile$WaveFileException;

    const-string v1, "RIFF chunk ID invalid"

    invoke-direct {v0, v1}, Lcom/twilio/client/impl/sound/WaveFile$WaveFileException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/twilio/client/impl/sound/WaveFile;->read32BE([BI)I

    move-result v1

    const-string v2, "WAVE"

    invoke-direct {p0, v2}, Lcom/twilio/client/impl/sound/WaveFile;->genId(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_2

    new-instance v0, Lcom/twilio/client/impl/sound/WaveFile$WaveFileException;

    const-string v1, "WAVE format ID invalid"

    invoke-direct {v0, v1}, Lcom/twilio/client/impl/sound/WaveFile$WaveFileException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/twilio/client/impl/sound/WaveFile;->read32BE([BI)I

    move-result v1

    const-string v2, "fmt "

    invoke-direct {p0, v2}, Lcom/twilio/client/impl/sound/WaveFile;->genId(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_3

    new-instance v0, Lcom/twilio/client/impl/sound/WaveFile$WaveFileException;

    const-string v1, "\'fmt \' subchunk ID invalid"

    invoke-direct {v0, v1}, Lcom/twilio/client/impl/sound/WaveFile$WaveFileException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-direct {p0, v0, v3}, Lcom/twilio/client/impl/sound/WaveFile;->read32LE([BI)I

    move-result v1

    if-eq v1, v3, :cond_4

    new-instance v0, Lcom/twilio/client/impl/sound/WaveFile$WaveFileException;

    const-string v1, "\'fmt \' subchunk size invalid"

    invoke-direct {v0, v1}, Lcom/twilio/client/impl/sound/WaveFile$WaveFileException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v1, 0x14

    invoke-direct {p0, v0, v1}, Lcom/twilio/client/impl/sound/WaveFile;->read16LE([BI)S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    new-instance v0, Lcom/twilio/client/impl/sound/WaveFile$WaveFileException;

    const-string v1, "Unsupported audio format (must be LPCM)"

    invoke-direct {v0, v1}, Lcom/twilio/client/impl/sound/WaveFile$WaveFileException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/16 v1, 0x16

    invoke-direct {p0, v0, v1}, Lcom/twilio/client/impl/sound/WaveFile;->read16LE([BI)S

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    new-instance v0, Lcom/twilio/client/impl/sound/WaveFile$WaveFileException;

    const-string v1, "Unsupported number of channels (must be 2)"

    invoke-direct {v0, v1}, Lcom/twilio/client/impl/sound/WaveFile$WaveFileException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/16 v1, 0x18

    invoke-direct {p0, v0, v1}, Lcom/twilio/client/impl/sound/WaveFile;->read32LE([BI)I

    move-result v1

    const v2, 0xac44

    if-eq v1, v2, :cond_7

    new-instance v0, Lcom/twilio/client/impl/sound/WaveFile$WaveFileException;

    const-string v1, "Unsupported sample rate (must be 44100Hz)"

    invoke-direct {v0, v1}, Lcom/twilio/client/impl/sound/WaveFile$WaveFileException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lcom/twilio/client/impl/sound/WaveFile;->read16LE([BI)S

    move-result v1

    if-eq v1, v3, :cond_8

    new-instance v0, Lcom/twilio/client/impl/sound/WaveFile$WaveFileException;

    const-string v1, "Unsupported bits/sample value (must be 16)"

    invoke-direct {v0, v1}, Lcom/twilio/client/impl/sound/WaveFile$WaveFileException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/16 v1, 0x24

    invoke-direct {p0, v0, v1}, Lcom/twilio/client/impl/sound/WaveFile;->read32BE([BI)I

    move-result v1

    const-string v2, "data"

    invoke-direct {p0, v2}, Lcom/twilio/client/impl/sound/WaveFile;->genId(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_9

    new-instance v0, Lcom/twilio/client/impl/sound/WaveFile$WaveFileException;

    const-string v1, "\'data\' subchunk ID invalid"

    invoke-direct {v0, v1}, Lcom/twilio/client/impl/sound/WaveFile$WaveFileException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    const/16 v1, 0x28

    invoke-direct {p0, v0, v1}, Lcom/twilio/client/impl/sound/WaveFile;->read32LE([BI)I

    move-result v0

    iput v0, p0, Lcom/twilio/client/impl/sound/WaveFile;->dataLength:I

    return-void
.end method
