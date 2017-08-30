.class public Lfr/acetelecom/vc/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/acetelecom/vc/f$a;
    }
.end annotation


# static fields
.field private static final f:[I

.field private static g:I


# instance fields
.field public a:I

.field public b:S

.field public c:I

.field public d:S

.field public e:I

.field private h:Z

.field private i:Landroid/media/AudioRecord;

.field private j:Landroid/media/MediaRecorder;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Lfr/acetelecom/vc/f$a;

.field private n:Ljava/io/RandomAccessFile;

.field private o:I

.field private p:I

.field private q:I

.field private r:[B

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lfr/acetelecom/vc/f;->f:[I

    const/4 v0, 0x0

    sput v0, Lfr/acetelecom/vc/f;->g:I

    return-void

    :array_0
    .array-data 4
        0xac44
        0x5622
        0x2b11
        0x1f40
    .end array-data
.end method

.method public constructor <init>(ZIIII)V
    .locals 7

    const/16 v4, 0x10

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f40

    iput v0, p0, Lfr/acetelecom/vc/f;->a:I

    iput-object v1, p0, Lfr/acetelecom/vc/f;->i:Landroid/media/AudioRecord;

    iput-object v1, p0, Lfr/acetelecom/vc/f;->j:Landroid/media/MediaRecorder;

    iput v2, p0, Lfr/acetelecom/vc/f;->k:I

    iput-object v1, p0, Lfr/acetelecom/vc/f;->l:Ljava/lang/String;

    iput p3, p0, Lfr/acetelecom/vc/f;->a:I

    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sampleRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lfr/acetelecom/vc/f;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iput-boolean p1, p0, Lfr/acetelecom/vc/f;->h:Z

    iget-boolean v0, p0, Lfr/acetelecom/vc/f;->h:Z

    if-eqz v0, :cond_4

    if-ne p5, v3, :cond_1

    const/16 v0, 0x10

    iput-short v0, p0, Lfr/acetelecom/vc/f;->d:S

    :goto_0
    if-ne p4, v4, :cond_2

    const/4 v0, 0x1

    iput-short v0, p0, Lfr/acetelecom/vc/f;->b:S

    :goto_1
    iput p2, p0, Lfr/acetelecom/vc/f;->o:I

    iget v0, p0, Lfr/acetelecom/vc/f;->a:I

    iput v0, p0, Lfr/acetelecom/vc/f;->c:I

    iput p5, p0, Lfr/acetelecom/vc/f;->p:I

    iget v0, p0, Lfr/acetelecom/vc/f;->a:I

    mul-int/lit8 v0, v0, 0x78

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lfr/acetelecom/vc/f;->q:I

    iget v0, p0, Lfr/acetelecom/vc/f;->q:I

    mul-int/lit8 v0, v0, 0x2

    iget-short v1, p0, Lfr/acetelecom/vc/f;->d:S

    mul-int/2addr v0, v1

    iget-short v1, p0, Lfr/acetelecom/vc/f;->b:S

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lfr/acetelecom/vc/f;->e:I

    iget v0, p0, Lfr/acetelecom/vc/f;->e:I

    iget v1, p0, Lfr/acetelecom/vc/f;->a:I

    invoke-static {v1, p4, p5}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lfr/acetelecom/vc/f;->a:I

    invoke-static {v0, p4, p5}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lfr/acetelecom/vc/f;->e:I

    iget v0, p0, Lfr/acetelecom/vc/f;->e:I

    iget-short v1, p0, Lfr/acetelecom/vc/f;->d:S

    mul-int/lit8 v1, v1, 0x2

    iget-short v2, p0, Lfr/acetelecom/vc/f;->b:S

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    div-int/2addr v0, v1

    iput v0, p0, Lfr/acetelecom/vc/f;->q:I

    const-class v0, Lfr/acetelecom/vc/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Increasing buffer size to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lfr/acetelecom/vc/f;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/media/AudioRecord;

    iget v2, p0, Lfr/acetelecom/vc/f;->a:I

    iget v5, p0, Lfr/acetelecom/vc/f;->e:I

    move v1, p2

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lfr/acetelecom/vc/f;->i:Landroid/media/AudioRecord;

    iget-object v0, p0, Lfr/acetelecom/vc/f;->i:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eq v0, v6, :cond_3

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "AudioRecord initialization failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-class v1, Lfr/acetelecom/vc/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    sget-object v0, Lfr/acetelecom/vc/f$a;->d:Lfr/acetelecom/vc/f$a;

    iput-object v0, p0, Lfr/acetelecom/vc/f;->m:Lfr/acetelecom/vc/f$a;

    :goto_3
    return-void

    :cond_1
    const/16 v0, 0x8

    :try_start_1
    iput-short v0, p0, Lfr/acetelecom/vc/f;->d:S

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x2

    iput-short v0, p0, Lfr/acetelecom/vc/f;->b:S

    goto/16 :goto_1

    :cond_3
    new-instance v0, Lfr/acetelecom/vc/f$1;

    invoke-direct {v0, p0}, Lfr/acetelecom/vc/f$1;-><init>(Lfr/acetelecom/vc/f;)V

    iget-object v1, p0, Lfr/acetelecom/vc/f;->i:Landroid/media/AudioRecord;

    invoke-virtual {v1, v0}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V

    iget-object v0, p0, Lfr/acetelecom/vc/f;->i:Landroid/media/AudioRecord;

    iget v1, p0, Lfr/acetelecom/vc/f;->q:I

    invoke-virtual {v0, v1}, Landroid/media/AudioRecord;->setPositionNotificationPeriod(I)I

    :goto_4
    const/4 v0, 0x0

    iput v0, p0, Lfr/acetelecom/vc/f;->k:I

    const/4 v0, 0x0

    iput-object v0, p0, Lfr/acetelecom/vc/f;->l:Ljava/lang/String;

    sget-object v0, Lfr/acetelecom/vc/f$a;->a:Lfr/acetelecom/vc/f$a;

    iput-object v0, p0, Lfr/acetelecom/vc/f;->m:Lfr/acetelecom/vc/f$a;

    goto :goto_3

    :cond_4
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lfr/acetelecom/vc/f;->j:Landroid/media/MediaRecorder;

    iget-object v0, p0, Lfr/acetelecom/vc/f;->j:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/f;->j:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/f;->j:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_5
    const-class v0, Lfr/acetelecom/vc/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown error occured while initializing recording"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic a(Lfr/acetelecom/vc/f;I)I
    .locals 0

    iput p1, p0, Lfr/acetelecom/vc/f;->s:I

    return p1
.end method

.method public static a(Ljava/lang/Boolean;)Lfr/acetelecom/vc/f;
    .locals 7

    const/16 v4, 0x10

    const/4 v3, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lfr/acetelecom/vc/f;

    const/4 v1, 0x0

    sget-object v6, Lfr/acetelecom/vc/f;->f:[I

    aget v3, v6, v3

    invoke-direct/range {v0 .. v5}, Lfr/acetelecom/vc/f;-><init>(ZIIII)V

    :goto_0
    return-object v0

    :cond_0
    move v6, v3

    :goto_1
    new-instance v0, Lfr/acetelecom/vc/f;

    sget-object v1, Lfr/acetelecom/vc/f;->f:[I

    aget v3, v1, v6

    move v1, v2

    invoke-direct/range {v0 .. v5}, Lfr/acetelecom/vc/f;-><init>(ZIIII)V

    add-int/lit8 v1, v6, -0x1

    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    invoke-virtual {v0}, Lfr/acetelecom/vc/f;->a()Lfr/acetelecom/vc/f$a;

    move-result-object v3

    sget-object v6, Lfr/acetelecom/vc/f$a;->a:Lfr/acetelecom/vc/f$a;

    if-ne v3, v6, :cond_2

    :cond_1
    sput v1, Lfr/acetelecom/vc/f;->g:I

    goto :goto_0

    :cond_2
    move v6, v1

    goto :goto_1
.end method

.method private a(BB)S
    .locals 1

    shl-int/lit8 v0, p2, 0x8

    or-int/2addr v0, p1

    int-to-short v0, v0

    return v0
.end method

.method static synthetic a(Lfr/acetelecom/vc/f;BB)S
    .locals 1

    invoke-direct {p0, p1, p2}, Lfr/acetelecom/vc/f;->a(BB)S

    move-result v0

    return v0
.end method

.method static synthetic a(Lfr/acetelecom/vc/f;)[B
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/f;->r:[B

    return-object v0
.end method

.method static synthetic b(Lfr/acetelecom/vc/f;I)I
    .locals 0

    iput p1, p0, Lfr/acetelecom/vc/f;->k:I

    return p1
.end method

.method static synthetic b(Lfr/acetelecom/vc/f;)Landroid/media/AudioRecord;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/f;->i:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic c(Lfr/acetelecom/vc/f;)Ljava/io/RandomAccessFile;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/f;->n:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method static synthetic d(Lfr/acetelecom/vc/f;)I
    .locals 1

    iget v0, p0, Lfr/acetelecom/vc/f;->s:I

    return v0
.end method

.method static synthetic e(Lfr/acetelecom/vc/f;)I
    .locals 1

    iget v0, p0, Lfr/acetelecom/vc/f;->k:I

    return v0
.end method


# virtual methods
.method public a()Lfr/acetelecom/vc/f$a;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/f;->m:Lfr/acetelecom/vc/f$a;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lfr/acetelecom/vc/f;->m:Lfr/acetelecom/vc/f$a;

    sget-object v1, Lfr/acetelecom/vc/f$a;->a:Lfr/acetelecom/vc/f$a;

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lfr/acetelecom/vc/f;->l:Ljava/lang/String;

    iget-boolean v0, p0, Lfr/acetelecom/vc/f;->h:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/f;->j:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lfr/acetelecom/vc/f;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-class v1, Lfr/acetelecom/vc/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v0, Lfr/acetelecom/vc/f$a;->d:Lfr/acetelecom/vc/f$a;

    iput-object v0, p0, Lfr/acetelecom/vc/f;->m:Lfr/acetelecom/vc/f$a;

    goto :goto_0

    :cond_1
    const-class v0, Lfr/acetelecom/vc/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown error occured while setting output path"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b()V
    .locals 4

    const/4 v2, 0x1

    :try_start_0
    iget-object v0, p0, Lfr/acetelecom/vc/f;->m:Lfr/acetelecom/vc/f$a;

    sget-object v1, Lfr/acetelecom/vc/f$a;->a:Lfr/acetelecom/vc/f$a;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lfr/acetelecom/vc/f;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/f;->i:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/f;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lfr/acetelecom/vc/f;->l:Ljava/lang/String;

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lfr/acetelecom/vc/f;->n:Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lfr/acetelecom/vc/f;->n:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-object v0, p0, Lfr/acetelecom/vc/f;->n:Ljava/io/RandomAccessFile;

    const-string v1, "RIFF"

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/f;->n:Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/f;->n:Ljava/io/RandomAccessFile;

    const-string v1, "WAVE"

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/f;->n:Ljava/io/RandomAccessFile;

    const-string v1, "fmt "

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/f;->n:Ljava/io/RandomAccessFile;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/f;->n:Ljava/io/RandomAccessFile;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeShort(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/f;->n:Ljava/io/RandomAccessFile;

    iget-short v1, p0, Lfr/acetelecom/vc/f;->b:S

    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeShort(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/f;->n:Ljava/io/RandomAccessFile;

    iget v1, p0, Lfr/acetelecom/vc/f;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/f;->n:Ljava/io/RandomAccessFile;

    iget v1, p0, Lfr/acetelecom/vc/f;->c:I

    iget-short v2, p0, Lfr/acetelecom/vc/f;->d:S

    mul-int/2addr v1, v2

    iget-short v2, p0, Lfr/acetelecom/vc/f;->b:S

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/f;->n:Ljava/io/RandomAccessFile;

    iget-short v1, p0, Lfr/acetelecom/vc/f;->b:S

    iget-short v2, p0, Lfr/acetelecom/vc/f;->d:S

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeShort(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/f;->n:Ljava/io/RandomAccessFile;

    iget-short v1, p0, Lfr/acetelecom/vc/f;->d:S

    invoke-static {v1}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeShort(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/f;->n:Ljava/io/RandomAccessFile;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/f;->n:Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget v0, p0, Lfr/acetelecom/vc/f;->q:I

    iget-short v1, p0, Lfr/acetelecom/vc/f;->d:S

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    iget-short v1, p0, Lfr/acetelecom/vc/f;->b:S

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lfr/acetelecom/vc/f;->r:[B

    sget-object v0, Lfr/acetelecom/vc/f$a;->b:Lfr/acetelecom/vc/f$a;

    iput-object v0, p0, Lfr/acetelecom/vc/f;->m:Lfr/acetelecom/vc/f$a;

    :goto_0
    return-void

    :cond_0
    const-class v0, Lfr/acetelecom/vc/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "prepare() method called on uninitialized recorder"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lfr/acetelecom/vc/f$a;->d:Lfr/acetelecom/vc/f$a;

    iput-object v0, p0, Lfr/acetelecom/vc/f;->m:Lfr/acetelecom/vc/f$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-class v1, Lfr/acetelecom/vc/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-object v0, Lfr/acetelecom/vc/f$a;->d:Lfr/acetelecom/vc/f$a;

    iput-object v0, p0, Lfr/acetelecom/vc/f;->m:Lfr/acetelecom/vc/f$a;

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lfr/acetelecom/vc/f;->j:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    sget-object v0, Lfr/acetelecom/vc/f$a;->b:Lfr/acetelecom/vc/f$a;

    iput-object v0, p0, Lfr/acetelecom/vc/f;->m:Lfr/acetelecom/vc/f$a;

    goto :goto_0

    :cond_2
    const-class v0, Lfr/acetelecom/vc/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "prepare() method called on illegal state"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lfr/acetelecom/vc/f;->c()V

    sget-object v0, Lfr/acetelecom/vc/f$a;->d:Lfr/acetelecom/vc/f$a;

    iput-object v0, p0, Lfr/acetelecom/vc/f;->m:Lfr/acetelecom/vc/f$a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    const-class v0, Lfr/acetelecom/vc/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unknown error occured in prepare()"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lfr/acetelecom/vc/f;->m:Lfr/acetelecom/vc/f$a;

    sget-object v1, Lfr/acetelecom/vc/f$a;->c:Lfr/acetelecom/vc/f$a;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lfr/acetelecom/vc/f;->e()V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lfr/acetelecom/vc/f;->h:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lfr/acetelecom/vc/f;->i:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/f;->i:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lfr/acetelecom/vc/f;->m:Lfr/acetelecom/vc/f$a;

    sget-object v1, Lfr/acetelecom/vc/f$a;->b:Lfr/acetelecom/vc/f$a;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_2
    iget-boolean v1, p0, Lfr/acetelecom/vc/f;->h:Z

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lfr/acetelecom/vc/f;->n:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lfr/acetelecom/vc/f;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    const-class v0, Lfr/acetelecom/vc/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "I/O exception occured while closing output file"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lfr/acetelecom/vc/f;->j:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/f;->j:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    goto :goto_1
.end method

.method public d()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lfr/acetelecom/vc/f;->m:Lfr/acetelecom/vc/f$a;

    sget-object v1, Lfr/acetelecom/vc/f$a;->b:Lfr/acetelecom/vc/f$a;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lfr/acetelecom/vc/f;->h:Z

    if-eqz v0, :cond_0

    iput v3, p0, Lfr/acetelecom/vc/f;->s:I

    iget-object v0, p0, Lfr/acetelecom/vc/f;->i:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    iget-object v0, p0, Lfr/acetelecom/vc/f;->i:Landroid/media/AudioRecord;

    iget-object v1, p0, Lfr/acetelecom/vc/f;->r:[B

    iget-object v2, p0, Lfr/acetelecom/vc/f;->r:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioRecord;->read([BII)I

    :goto_0
    sget-object v0, Lfr/acetelecom/vc/f$a;->c:Lfr/acetelecom/vc/f$a;

    iput-object v0, p0, Lfr/acetelecom/vc/f;->m:Lfr/acetelecom/vc/f$a;

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/f;->j:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    goto :goto_0

    :cond_1
    const-class v0, Lfr/acetelecom/vc/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "start() called on illegal state"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lfr/acetelecom/vc/f$a;->d:Lfr/acetelecom/vc/f$a;

    iput-object v0, p0, Lfr/acetelecom/vc/f;->m:Lfr/acetelecom/vc/f$a;

    goto :goto_1
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, Lfr/acetelecom/vc/f;->m:Lfr/acetelecom/vc/f$a;

    sget-object v1, Lfr/acetelecom/vc/f$a;->c:Lfr/acetelecom/vc/f$a;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lfr/acetelecom/vc/f;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/f;->i:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    :try_start_0
    iget-object v0, p0, Lfr/acetelecom/vc/f;->n:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x4

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lfr/acetelecom/vc/f;->n:Ljava/io/RandomAccessFile;

    iget v1, p0, Lfr/acetelecom/vc/f;->s:I

    add-int/lit8 v1, v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/f;->n:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lfr/acetelecom/vc/f;->n:Ljava/io/RandomAccessFile;

    iget v1, p0, Lfr/acetelecom/vc/f;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/f;->n:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lfr/acetelecom/vc/f$a;->e:Lfr/acetelecom/vc/f$a;

    iput-object v0, p0, Lfr/acetelecom/vc/f;->m:Lfr/acetelecom/vc/f$a;

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-class v0, Lfr/acetelecom/vc/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "I/O exception occured while closing output file"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lfr/acetelecom/vc/f$a;->d:Lfr/acetelecom/vc/f$a;

    iput-object v0, p0, Lfr/acetelecom/vc/f;->m:Lfr/acetelecom/vc/f$a;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/f;->j:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    goto :goto_0

    :cond_1
    const-class v0, Lfr/acetelecom/vc/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "stop() called on illegal state"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lfr/acetelecom/vc/f$a;->d:Lfr/acetelecom/vc/f$a;

    iput-object v0, p0, Lfr/acetelecom/vc/f;->m:Lfr/acetelecom/vc/f$a;

    goto :goto_1
.end method
