.class Lfr/acetelecom/vc/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioRecord$OnRecordPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfr/acetelecom/vc/f;-><init>(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfr/acetelecom/vc/f;


# direct methods
.method constructor <init>(Lfr/acetelecom/vc/f;)V
    .locals 0

    iput-object p1, p0, Lfr/acetelecom/vc/f$1;->a:Lfr/acetelecom/vc/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerReached(Landroid/media/AudioRecord;)V
    .locals 0

    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioRecord;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lfr/acetelecom/vc/f$1;->a:Lfr/acetelecom/vc/f;

    invoke-static {v1}, Lfr/acetelecom/vc/f;->b(Lfr/acetelecom/vc/f;)Landroid/media/AudioRecord;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/f$1;->a:Lfr/acetelecom/vc/f;

    invoke-static {v2}, Lfr/acetelecom/vc/f;->a(Lfr/acetelecom/vc/f;)[B

    move-result-object v2

    iget-object v3, p0, Lfr/acetelecom/vc/f$1;->a:Lfr/acetelecom/vc/f;

    invoke-static {v3}, Lfr/acetelecom/vc/f;->a(Lfr/acetelecom/vc/f;)[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioRecord;->read([BII)I

    :try_start_0
    iget-object v1, p0, Lfr/acetelecom/vc/f$1;->a:Lfr/acetelecom/vc/f;

    invoke-static {v1}, Lfr/acetelecom/vc/f;->c(Lfr/acetelecom/vc/f;)Ljava/io/RandomAccessFile;

    move-result-object v1

    iget-object v2, p0, Lfr/acetelecom/vc/f$1;->a:Lfr/acetelecom/vc/f;

    invoke-static {v2}, Lfr/acetelecom/vc/f;->a(Lfr/acetelecom/vc/f;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v1, p0, Lfr/acetelecom/vc/f$1;->a:Lfr/acetelecom/vc/f;

    iget-object v2, p0, Lfr/acetelecom/vc/f$1;->a:Lfr/acetelecom/vc/f;

    invoke-static {v2}, Lfr/acetelecom/vc/f;->d(Lfr/acetelecom/vc/f;)I

    move-result v2

    iget-object v3, p0, Lfr/acetelecom/vc/f$1;->a:Lfr/acetelecom/vc/f;

    invoke-static {v3}, Lfr/acetelecom/vc/f;->a(Lfr/acetelecom/vc/f;)[B

    move-result-object v3

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lfr/acetelecom/vc/f;->a(Lfr/acetelecom/vc/f;I)I

    iget-object v1, p0, Lfr/acetelecom/vc/f$1;->a:Lfr/acetelecom/vc/f;

    iget-short v1, v1, Lfr/acetelecom/vc/f;->d:S

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1

    :goto_0
    iget-object v1, p0, Lfr/acetelecom/vc/f$1;->a:Lfr/acetelecom/vc/f;

    invoke-static {v1}, Lfr/acetelecom/vc/f;->a(Lfr/acetelecom/vc/f;)[B

    move-result-object v1

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lfr/acetelecom/vc/f$1;->a:Lfr/acetelecom/vc/f;

    iget-object v2, p0, Lfr/acetelecom/vc/f$1;->a:Lfr/acetelecom/vc/f;

    invoke-static {v2}, Lfr/acetelecom/vc/f;->a(Lfr/acetelecom/vc/f;)[B

    move-result-object v2

    mul-int/lit8 v3, v0, 0x2

    aget-byte v2, v2, v3

    iget-object v3, p0, Lfr/acetelecom/vc/f$1;->a:Lfr/acetelecom/vc/f;

    invoke-static {v3}, Lfr/acetelecom/vc/f;->a(Lfr/acetelecom/vc/f;)[B

    move-result-object v3

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    invoke-static {v1, v2, v3}, Lfr/acetelecom/vc/f;->a(Lfr/acetelecom/vc/f;BB)S

    move-result v1

    iget-object v2, p0, Lfr/acetelecom/vc/f$1;->a:Lfr/acetelecom/vc/f;

    invoke-static {v2}, Lfr/acetelecom/vc/f;->e(Lfr/acetelecom/vc/f;)I

    move-result v2

    if-le v1, v2, :cond_0

    iget-object v2, p0, Lfr/acetelecom/vc/f$1;->a:Lfr/acetelecom/vc/f;

    invoke-static {v2, v1}, Lfr/acetelecom/vc/f;->b(Lfr/acetelecom/vc/f;I)I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lfr/acetelecom/vc/f$1;->a:Lfr/acetelecom/vc/f;

    invoke-static {v1}, Lfr/acetelecom/vc/f;->a(Lfr/acetelecom/vc/f;)[B

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lfr/acetelecom/vc/f$1;->a:Lfr/acetelecom/vc/f;

    invoke-static {v1}, Lfr/acetelecom/vc/f;->a(Lfr/acetelecom/vc/f;)[B

    move-result-object v1

    aget-byte v1, v1, v0

    iget-object v2, p0, Lfr/acetelecom/vc/f$1;->a:Lfr/acetelecom/vc/f;

    invoke-static {v2}, Lfr/acetelecom/vc/f;->e(Lfr/acetelecom/vc/f;)I

    move-result v2

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lfr/acetelecom/vc/f$1;->a:Lfr/acetelecom/vc/f;

    iget-object v2, p0, Lfr/acetelecom/vc/f$1;->a:Lfr/acetelecom/vc/f;

    invoke-static {v2}, Lfr/acetelecom/vc/f;->a(Lfr/acetelecom/vc/f;)[B

    move-result-object v2

    aget-byte v2, v2, v0

    invoke-static {v1, v2}, Lfr/acetelecom/vc/f;->b(Lfr/acetelecom/vc/f;I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-class v0, Lfr/acetelecom/vc/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error occured in updateListener, recording is aborted"

    invoke-static {v0, v1}, Lfr/acetelecom/vc/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
