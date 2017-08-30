.class final Lcom/tapjoy/internal/dy$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/dy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/Stack;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/dy$a;->a:Ljava/util/Stack;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lcom/tapjoy/internal/dy$a;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 1

    invoke-static {}, Lcom/tapjoy/internal/dy;->b()[I

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method


# virtual methods
.method final a(Lcom/tapjoy/internal/dk;)V
    .locals 6

    const/4 v5, 0x0

    move-object v1, p1

    :goto_0
    invoke-virtual {v1}, Lcom/tapjoy/internal/dk;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/tapjoy/internal/dk;->a()I

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/internal/dy$a;->a(I)I

    move-result v2

    invoke-static {}, Lcom/tapjoy/internal/dy;->b()[I

    move-result-object v0

    add-int/lit8 v3, v2, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/tapjoy/internal/dy$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/dy$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/dk;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->a()I

    move-result v0

    if-lt v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/dy$a;->a:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/tapjoy/internal/dy;->b()[I

    move-result-object v0

    aget v4, v0, v2

    iget-object v0, p0, Lcom/tapjoy/internal/dy$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/dk;

    move-object v2, v0

    :goto_2
    iget-object v0, p0, Lcom/tapjoy/internal/dy$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/dy$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/dk;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->a()I

    move-result v0

    if-ge v0, v4, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/dy$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/dk;

    new-instance v3, Lcom/tapjoy/internal/dy;

    invoke-direct {v3, v0, v2, v5}, Lcom/tapjoy/internal/dy;-><init>(Lcom/tapjoy/internal/dk;Lcom/tapjoy/internal/dk;B)V

    move-object v2, v3

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/tapjoy/internal/dy;

    invoke-direct {v0, v2, v1, v5}, Lcom/tapjoy/internal/dy;-><init>(Lcom/tapjoy/internal/dk;Lcom/tapjoy/internal/dk;B)V

    move-object v1, v0

    :goto_3
    iget-object v0, p0, Lcom/tapjoy/internal/dy$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/tapjoy/internal/dk;->a()I

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/internal/dy$a;->a(I)I

    move-result v0

    invoke-static {}, Lcom/tapjoy/internal/dy;->b()[I

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    aget v2, v2, v0

    iget-object v0, p0, Lcom/tapjoy/internal/dy$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/dk;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dk;->a()I

    move-result v0

    if-ge v0, v2, :cond_3

    iget-object v0, p0, Lcom/tapjoy/internal/dy$a;->a:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/dk;

    new-instance v2, Lcom/tapjoy/internal/dy;

    invoke-direct {v2, v0, v1, v5}, Lcom/tapjoy/internal/dy;-><init>(Lcom/tapjoy/internal/dk;Lcom/tapjoy/internal/dk;B)V

    move-object v1, v2

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/tapjoy/internal/dy$a;->a:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    instance-of v0, v1, Lcom/tapjoy/internal/dy;

    if-eqz v0, :cond_5

    move-object v0, v1

    check-cast v0, Lcom/tapjoy/internal/dy;

    invoke-static {v0}, Lcom/tapjoy/internal/dy;->a(Lcom/tapjoy/internal/dy;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/dy$a;->a(Lcom/tapjoy/internal/dk;)V

    invoke-static {v0}, Lcom/tapjoy/internal/dy;->b(Lcom/tapjoy/internal/dy;)Lcom/tapjoy/internal/dk;

    move-result-object v1

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x31

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Has a new type of ByteString been created? Found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
