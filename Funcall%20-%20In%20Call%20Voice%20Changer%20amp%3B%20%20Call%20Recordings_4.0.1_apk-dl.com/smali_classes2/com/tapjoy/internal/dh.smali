.class public abstract Lcom/tapjoy/internal/dh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/du;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/dh$a;
    }
.end annotation


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/dh;->a:I

    .line 117
    return-void
.end method


# virtual methods
.method public final a(Ljava/io/OutputStream;)V
    .locals 2

    .prologue
    const/16 v0, 0x1000

    .line 77
    invoke-virtual {p0}, Lcom/tapjoy/internal/dh;->b()I

    move-result v1

    .line 3073
    if-le v1, v0, :cond_0

    .line 79
    :goto_0
    invoke-static {p1, v0}, Lcom/tapjoy/internal/dm;->a(Ljava/io/OutputStream;I)Lcom/tapjoy/internal/dm;

    move-result-object v0

    .line 81
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/dh;->a(Lcom/tapjoy/internal/dm;)V

    .line 82
    invoke-virtual {v0}, Lcom/tapjoy/internal/dm;->a()V

    .line 83
    return-void

    :cond_0
    move v0, v1

    .line 3074
    goto :goto_0
.end method

.method public final a()[B
    .locals 3

    .prologue
    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/tapjoy/internal/dh;->b()I

    move-result v0

    new-array v0, v0, [B

    .line 1117
    array-length v1, v0

    .line 1130
    new-instance v2, Lcom/tapjoy/internal/dm;

    invoke-direct {v2, v0, v1}, Lcom/tapjoy/internal/dm;-><init>([BI)V

    .line 66
    invoke-virtual {p0, v2}, Lcom/tapjoy/internal/dh;->a(Lcom/tapjoy/internal/dm;)V

    .line 2984
    iget-object v1, v2, Lcom/tapjoy/internal/dm;->c:Ljava/io/OutputStream;

    if-nez v1, :cond_0

    .line 2985
    iget v1, v2, Lcom/tapjoy/internal/dm;->a:I

    iget v2, v2, Lcom/tapjoy/internal/dm;->b:I

    sub-int/2addr v1, v2

    .line 2001
    if-eqz v1, :cond_1

    .line 2002
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2987
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    :cond_1
    return-object v0
.end method
