.class final Lcom/tapjoy/internal/dt$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/dk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/dt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/dt;

.field private b:I

.field private final c:I


# direct methods
.method private constructor <init>(Lcom/tapjoy/internal/dt;)V
    .locals 1

    .prologue
    .line 314
    iput-object p1, p0, Lcom/tapjoy/internal/dt$a;->a:Lcom/tapjoy/internal/dt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    const/4 v0, 0x0

    iput v0, p0, Lcom/tapjoy/internal/dt$a;->b:I

    .line 316
    invoke-virtual {p1}, Lcom/tapjoy/internal/dt;->a()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/dt$a;->c:I

    .line 317
    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/dt;B)V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/dt$a;-><init>(Lcom/tapjoy/internal/dt;)V

    return-void
.end method


# virtual methods
.method public final a()B
    .locals 3

    .prologue
    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/dt$a;->a:Lcom/tapjoy/internal/dt;

    iget-object v0, v0, Lcom/tapjoy/internal/dt;->d:[B

    iget v1, p0, Lcom/tapjoy/internal/dt$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tapjoy/internal/dt$a;->b:I

    aget-byte v0, v0, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final hasNext()Z
    .locals 2

    .prologue
    .line 320
    iget v0, p0, Lcom/tapjoy/internal/dt$a;->b:I

    iget v1, p0, Lcom/tapjoy/internal/dt$a;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 310
    .line 1325
    invoke-virtual {p0}, Lcom/tapjoy/internal/dt$a;->a()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 310
    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 337
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
