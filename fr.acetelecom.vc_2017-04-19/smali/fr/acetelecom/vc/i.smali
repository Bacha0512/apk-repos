.class Lfr/acetelecom/vc/i;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfr/acetelecom/vc/i$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/support/v4/app/Fragment;

.field private final d:Landroid/app/Activity;

.field private e:Landroid/media/MediaPlayer;

.field private f:Landroid/media/MediaPlayer;

.field private g:Landroid/media/MediaPlayer;

.field private h:Z

.field private i:Z

.field private j:Lfr/acetelecom/vc/f;

.field private k:Ljava/util/Timer;

.field private final l:Ljava/lang/String;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:Lfr/acetelecom/vc/i$a;

.field private final r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Ljava/lang/String;Lfr/acetelecom/vc/i$a;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lfr/acetelecom/vc/i;->f:Landroid/media/MediaPlayer;

    iput-object v1, p0, Lfr/acetelecom/vc/i;->g:Landroid/media/MediaPlayer;

    iput-boolean v0, p0, Lfr/acetelecom/vc/i;->h:Z

    iput-boolean v0, p0, Lfr/acetelecom/vc/i;->i:Z

    iput-object v1, p0, Lfr/acetelecom/vc/i;->j:Lfr/acetelecom/vc/f;

    iput-object v1, p0, Lfr/acetelecom/vc/i;->k:Ljava/util/Timer;

    iput v0, p0, Lfr/acetelecom/vc/i;->m:I

    iput-object v1, p0, Lfr/acetelecom/vc/i;->q:Lfr/acetelecom/vc/i$a;

    new-instance v0, Lfr/acetelecom/vc/i$4;

    invoke-direct {v0, p0}, Lfr/acetelecom/vc/i$4;-><init>(Lfr/acetelecom/vc/i;)V

    iput-object v0, p0, Lfr/acetelecom/vc/i;->r:Ljava/lang/Runnable;

    iput-object p3, p0, Lfr/acetelecom/vc/i;->q:Lfr/acetelecom/vc/i$a;

    iput-object p1, p0, Lfr/acetelecom/vc/i;->c:Landroid/support/v4/app/Fragment;

    iget-object v0, p0, Lfr/acetelecom/vc/i;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/i;->b:Landroid/content/Context;

    iget-object v0, p0, Lfr/acetelecom/vc/i;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/i;->d:Landroid/app/Activity;

    iput-object v1, p0, Lfr/acetelecom/vc/i;->e:Landroid/media/MediaPlayer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/i;->l:Ljava/lang/String;

    iput-object p2, p0, Lfr/acetelecom/vc/i;->n:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lfr/acetelecom/vc/i;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/i;->g:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .locals 8

    const-wide/16 v2, 0x3a98

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v0, p0, Lfr/acetelecom/vc/i;->i:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lfr/acetelecom/vc/i;->d()V

    :cond_0
    iget-boolean v0, p0, Lfr/acetelecom/vc/i;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/i;->d:Landroid/app/Activity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x1

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const/4 v1, 0x3

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lfr/acetelecom/vc/f;->a(Ljava/lang/Boolean;)Lfr/acetelecom/vc/f;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/i;->j:Lfr/acetelecom/vc/f;

    iget-object v0, p0, Lfr/acetelecom/vc/i;->q:Lfr/acetelecom/vc/i$a;

    invoke-interface {v0}, Lfr/acetelecom/vc/i$a;->a()V

    iget-object v0, p0, Lfr/acetelecom/vc/i;->j:Lfr/acetelecom/vc/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lfr/acetelecom/vc/i;->l:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "outputPc.wav"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfr/acetelecom/vc/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/i;->j:Lfr/acetelecom/vc/f;

    invoke-virtual {v0}, Lfr/acetelecom/vc/f;->b()V

    iget-object v0, p0, Lfr/acetelecom/vc/i;->j:Lfr/acetelecom/vc/f;

    invoke-virtual {v0}, Lfr/acetelecom/vc/f;->d()V

    iput-boolean v7, p0, Lfr/acetelecom/vc/i;->h:Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lfr/acetelecom/vc/i;->k:Ljava/util/Timer;

    iget-object v0, p0, Lfr/acetelecom/vc/i;->k:Ljava/util/Timer;

    new-instance v1, Lfr/acetelecom/vc/i$1;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/i$1;-><init>(Lfr/acetelecom/vc/i;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "VC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "???????"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lfr/acetelecom/vc/i;)V
    .locals 0

    invoke-direct {p0}, Lfr/acetelecom/vc/i;->c()V

    return-void
.end method

.method static synthetic a(Lfr/acetelecom/vc/i;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lfr/acetelecom/vc/i;->b(Landroid/view/View;)V

    return-void
.end method

.method private a(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v3, v0, [B

    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/DataInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    :cond_0
    :try_start_2
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v0, "RIFF"

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    array-length v0, v3

    add-int/lit8 v0, v0, 0x24

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const-string v0, "WAVE"

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const-string v0, "fmt "

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/i;->j:Lfr/acetelecom/vc/f;

    iget-short v0, v0, Lfr/acetelecom/vc/f;->b:S

    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/i;->j:Lfr/acetelecom/vc/f;

    iget v0, v0, Lfr/acetelecom/vc/f;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/i;->j:Lfr/acetelecom/vc/f;

    iget v0, v0, Lfr/acetelecom/vc/f;->c:I

    iget-object v2, p0, Lfr/acetelecom/vc/i;->j:Lfr/acetelecom/vc/f;

    iget-short v2, v2, Lfr/acetelecom/vc/f;->d:S

    mul-int/2addr v0, v2

    iget-object v2, p0, Lfr/acetelecom/vc/i;->j:Lfr/acetelecom/vc/f;

    iget-short v2, v2, Lfr/acetelecom/vc/f;->b:S

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/i;->j:Lfr/acetelecom/vc/f;

    iget-short v0, v0, Lfr/acetelecom/vc/f;->b:S

    iget-object v2, p0, Lfr/acetelecom/vc/i;->j:Lfr/acetelecom/vc/f;

    iget-short v2, v2, Lfr/acetelecom/vc/f;->d:S

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/i;->j:Lfr/acetelecom/vc/f;

    iget-short v0, v0, Lfr/acetelecom/vc/f;->d:S

    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    const-string v0, "data"

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    array-length v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    array-length v0, v3

    div-int/lit8 v0, v0, 0x2

    new-array v2, v0, [S

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/nio/ShortBuffer;->get([S)Ljava/nio/ShortBuffer;

    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    array-length v5, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_2

    aget-short v6, v2, v0

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    :cond_1
    throw v0

    :cond_2
    :try_start_4
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_3
    return-void

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_4
    throw v0

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lfr/acetelecom/vc/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lfr/acetelecom/vc/i;->i:Z

    return p1
.end method

.method private a([B[B)[B
    .locals 6

    array-length v0, p1

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    int-to-short v2, v2

    aget-byte v3, p1, v0

    int-to-short v3, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-short v2, v2

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, p2, v4

    int-to-short v4, v4

    aget-byte v5, p2, v0

    int-to-short v5, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    int-to-short v4, v4

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    add-int/2addr v2, v4

    int-to-short v2, v2

    add-int/2addr v3, v5

    int-to-short v3, v3

    add-int/2addr v2, v3

    int-to-short v2, v2

    int-to-byte v3, v2

    aput-byte v3, v1, v0

    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static synthetic b(Lfr/acetelecom/vc/i;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/i;->g:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic b(Lfr/acetelecom/vc/i;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/i;->f:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lfr/acetelecom/vc/i;->h:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfr/acetelecom/vc/i;->j:Lfr/acetelecom/vc/f;

    invoke-virtual {v0}, Lfr/acetelecom/vc/f;->e()V

    iget-object v0, p0, Lfr/acetelecom/vc/i;->j:Lfr/acetelecom/vc/f;

    invoke-virtual {v0}, Lfr/acetelecom/vc/f;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/acetelecom/vc/i;->h:Z

    iget-object v0, p0, Lfr/acetelecom/vc/i;->k:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/i;->k:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/i;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/i;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lfr/acetelecom/vc/i;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lfr/acetelecom/vc/i;->e:Landroid/media/MediaPlayer;

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "VC"

    const-string v1, "not recording"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lfr/acetelecom/vc/i;)Lfr/acetelecom/vc/i$a;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/i;->q:Lfr/acetelecom/vc/i$a;

    return-object v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lfr/acetelecom/vc/i;->d:Landroid/app/Activity;

    iget-object v1, p0, Lfr/acetelecom/vc/i;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lfr/acetelecom/vc/i;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/i;->f:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private d()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lfr/acetelecom/vc/i;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/i;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iput-object v1, p0, Lfr/acetelecom/vc/i;->f:Landroid/media/MediaPlayer;

    :cond_0
    iget-object v0, p0, Lfr/acetelecom/vc/i;->g:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfr/acetelecom/vc/i;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iput-object v1, p0, Lfr/acetelecom/vc/i;->g:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lfr/acetelecom/vc/i;->q:Lfr/acetelecom/vc/i$a;

    invoke-interface {v0}, Lfr/acetelecom/vc/i$a;->c()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfr/acetelecom/vc/i;->i:Z

    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 11

    const/4 v1, 0x1

    const/16 v0, 0x400

    new-array v3, v0, [B

    new-array v4, v0, [B

    new-array v0, v0, [B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfr/acetelecom/vc/i;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "rawmix.wav"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "outPc.wav"

    :try_start_0
    new-instance v7, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v8, Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lfr/acetelecom/vc/i;->l:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v9, p0, Lfr/acetelecom/vc/i;->p:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v0, p0, Lfr/acetelecom/vc/i;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lfr/acetelecom/vc/i;->m:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v9

    move v0, v1

    :goto_0
    :try_start_1
    invoke-virtual {v8, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v10, -0x1

    if-eq v2, v10, :cond_0

    invoke-virtual {v9, v4}, Ljava/io/InputStream;->read([B)I

    invoke-direct {p0, v3, v4}, Lfr/acetelecom/vc/i;->a([B[B)[B

    move-result-object v10

    add-int/lit8 v2, v0, -0x1

    if-ge v0, v1, :cond_1

    invoke-virtual {v7, v10}, Ljava/io/DataOutputStream;->write([B)V

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lfr/acetelecom/vc/i;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_3
    invoke-direct {p0, v0, v1}, Lfr/acetelecom/vc/i;->a(Ljava/io/File;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    return-object v6

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "VC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playSound?:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "VC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playSound:Resources.NotFoundException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_5
    const-string v1, "VC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playSound??:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v1, "VC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playSound:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_1
    move v0, v2

    goto/16 :goto_0
.end method

.method static synthetic e(Lfr/acetelecom/vc/i;)Z
    .locals 1

    iget-boolean v0, p0, Lfr/acetelecom/vc/i;->h:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lfr/acetelecom/vc/i;->g:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/i;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lfr/acetelecom/vc/i;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lfr/acetelecom/vc/i;->g:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lfr/acetelecom/vc/i;->q:Lfr/acetelecom/vc/i$a;

    invoke-interface {v0}, Lfr/acetelecom/vc/i$a;->c()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lfr/acetelecom/vc/i;->g:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/i;->d:Landroid/app/Activity;

    invoke-static {v0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/i;->g:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lfr/acetelecom/vc/i;->g:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lfr/acetelecom/vc/i;->g:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lfr/acetelecom/vc/i;->g:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/i;->g:Landroid/media/MediaPlayer;

    new-instance v1, Lfr/acetelecom/vc/i$2;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/i$2;-><init>(Lfr/acetelecom/vc/i;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lfr/acetelecom/vc/i;->g:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method

.method public a(Landroid/view/View;I)V
    .locals 2

    iput p2, p0, Lfr/acetelecom/vc/i;->o:I

    iget-boolean v0, p0, Lfr/acetelecom/vc/i;->h:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lfr/acetelecom/vc/i;->b(Landroid/view/View;)V

    const-string v0, "VC"

    const-string v1, "onClickTestWithBackground"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lfr/acetelecom/vc/i;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lfr/acetelecom/vc/i;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lfr/acetelecom/vc/i;->n:Ljava/lang/String;

    iget-object v0, p0, Lfr/acetelecom/vc/i;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/i;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/i;->n:Ljava/lang/String;

    const-string v2, "raw"

    iget-object v3, p0, Lfr/acetelecom/vc/i;->d:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lfr/acetelecom/vc/i;->m:I

    :cond_0
    return-void
.end method

.method public b()V
    .locals 7

    const/high16 v3, 0x41000000    # 8.0f

    iget-boolean v0, p0, Lfr/acetelecom/vc/i;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfr/acetelecom/vc/i;->i:Z

    iget-object v0, p0, Lfr/acetelecom/vc/i;->q:Lfr/acetelecom/vc/i$a;

    invoke-interface {v0}, Lfr/acetelecom/vc/i$a;->b()V

    const-string v0, "outputPc.wav"

    iput-object v0, p0, Lfr/acetelecom/vc/i;->p:Ljava/lang/String;

    iget v0, p0, Lfr/acetelecom/vc/i;->o:I

    add-int/lit8 v6, v0, -0x8

    iget v0, p0, Lfr/acetelecom/vc/i;->o:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const-string v0, "outputPc1.wav"

    iput-object v0, p0, Lfr/acetelecom/vc/i;->p:Ljava/lang/String;

    sget-object v0, Lfr/acetelecom/vc/a;->a:Lfr/acetelecom/vc/jni/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfr/acetelecom/vc/i;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "outputPc.wav"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lfr/acetelecom/vc/i;->l:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lfr/acetelecom/vc/i;->p:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    int-to-float v4, v6

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lfr/acetelecom/vc/jni/a;->a(Ljava/lang/String;Ljava/lang/String;FFF)V

    :cond_2
    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileToMix:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/i;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",seekval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lfr/acetelecom/vc/i;->n:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lfr/acetelecom/vc/i;->p:Ljava/lang/String;

    iput-object v0, p0, Lfr/acetelecom/vc/i;->a:Ljava/lang/String;

    :goto_1
    const-string v0, "VC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileToPlay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",seekval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfr/acetelecom/vc/i;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lfr/acetelecom/vc/i;->f:Landroid/media/MediaPlayer;

    if-nez v1, :cond_3

    iget-object v1, p0, Lfr/acetelecom/vc/i;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/i;->f:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lfr/acetelecom/vc/i;->f:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfr/acetelecom/vc/i;->f:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    :cond_3
    iget-object v0, p0, Lfr/acetelecom/vc/i;->f:Landroid/media/MediaPlayer;

    new-instance v1, Lfr/acetelecom/vc/i$3;

    invoke-direct {v1, p0}, Lfr/acetelecom/vc/i$3;-><init>(Lfr/acetelecom/vc/i;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lfr/acetelecom/vc/i;->f:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto/16 :goto_0

    :cond_4
    invoke-direct {p0}, Lfr/acetelecom/vc/i;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfr/acetelecom/vc/i;->a:Ljava/lang/String;

    goto :goto_1
.end method
