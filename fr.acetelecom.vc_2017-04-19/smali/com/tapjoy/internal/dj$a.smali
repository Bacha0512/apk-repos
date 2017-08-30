.class final Lcom/tapjoy/internal/dj$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/dk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/dj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/dj;

.field private b:I

.field private final c:I


# direct methods
.method private constructor <init>(Lcom/tapjoy/internal/dj;)V
    .locals 2

    iput-object p1, p0, Lcom/tapjoy/internal/dj$a;->a:Lcom/tapjoy/internal/dj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/tapjoy/internal/dj;->a:I

    iput v0, p0, Lcom/tapjoy/internal/dj$a;->b:I

    iget v0, p0, Lcom/tapjoy/internal/dj$a;->b:I

    invoke-virtual {p1}, Lcom/tapjoy/internal/dj;->a()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tapjoy/internal/dj$a;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/dj;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/dj$a;-><init>(Lcom/tapjoy/internal/dj;)V

    return-void
.end method


# virtual methods
.method public final a()B
    .locals 3

    iget v0, p0, Lcom/tapjoy/internal/dj$a;->b:I

    iget v1, p0, Lcom/tapjoy/internal/dj$a;->c:I

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/dj$a;->a:Lcom/tapjoy/internal/dj;

    iget-object v0, v0, Lcom/tapjoy/internal/dj;->d:[B

    iget v1, p0, Lcom/tapjoy/internal/dj$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tapjoy/internal/dj$a;->b:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/tapjoy/internal/dj$a;->b:I

    iget v1, p0, Lcom/tapjoy/internal/dj$a;->c:I

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

    invoke-virtual {p0}, Lcom/tapjoy/internal/dj$a;->a()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
