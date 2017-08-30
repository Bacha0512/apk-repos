.class public final Lcom/tapjoy/internal/dp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/dp$b;,
        Lcom/tapjoy/internal/dp$a;
    }
.end annotation


# static fields
.field public static final a:[B

.field public static final b:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 388
    sput-object v0, Lcom/tapjoy/internal/dp;->a:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/dp;->b:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static a(J)I
    .locals 2

    .prologue
    .line 237
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static a(Lcom/tapjoy/internal/dp$a;)I
    .locals 1

    .prologue
    .line 257
    invoke-interface {p0}, Lcom/tapjoy/internal/dp$a;->a()I

    move-result v0

    return v0
.end method

.method public static a(Z)I
    .locals 1

    .prologue
    .line 246
    if-eqz p0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method public static a([B)Z
    .locals 2

    .prologue
    .line 187
    .line 1109
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/tapjoy/internal/eb;->a([BII)Z

    move-result v0

    .line 187
    return v0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 3

    .prologue
    .line 206
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
