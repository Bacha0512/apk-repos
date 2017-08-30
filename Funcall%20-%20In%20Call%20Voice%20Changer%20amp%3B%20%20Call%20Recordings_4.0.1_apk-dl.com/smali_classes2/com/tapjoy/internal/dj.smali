.class final Lcom/tapjoy/internal/dj;
.super Lcom/tapjoy/internal/dt;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/dj$a;
    }
.end annotation


# instance fields
.field final a:I

.field private final e:I


# direct methods
.method constructor <init>([BII)V
    .locals 4

    .prologue
    const/16 v2, 0x1d

    .line 64
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/dt;-><init>([B)V

    .line 65
    if-gez p2, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Offset too small: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    if-gez p3, :cond_1

    .line 69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Length too small: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    int-to-long v0, p2

    int-to-long v2, p3

    add-long/2addr v0, v2

    array-length v2, p1

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x30

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Offset+Length too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_2
    iput p2, p0, Lcom/tapjoy/internal/dj;->a:I

    .line 77
    iput p3, p0, Lcom/tapjoy/internal/dj;->e:I

    .line 78
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/tapjoy/internal/dj;->e:I

    return v0
.end method

.method protected final a([BIII)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/tapjoy/internal/dj;->d:[B

    .line 1112
    iget v1, p0, Lcom/tapjoy/internal/dj;->a:I

    .line 121
    add-int/2addr v1, p2

    invoke-static {v0, v1, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    return-void
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/tapjoy/internal/dj;->a:I

    return v0
.end method

.method public final c()Lcom/tapjoy/internal/dk$a;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/tapjoy/internal/dj$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tapjoy/internal/dj$a;-><init>(Lcom/tapjoy/internal/dj;B)V

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/tapjoy/internal/dj;->c()Lcom/tapjoy/internal/dk$a;

    move-result-object v0

    return-object v0
.end method
