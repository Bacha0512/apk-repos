.class final Lcom/tapjoy/internal/dy$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/dk$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/dy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/tapjoy/internal/dy;

.field private final c:Lcom/tapjoy/internal/dy$b;

.field private d:Lcom/tapjoy/internal/dk$a;


# direct methods
.method private constructor <init>(Lcom/tapjoy/internal/dy;)V
    .locals 2

    .prologue
    .line 788
    iput-object p1, p0, Lcom/tapjoy/internal/dy$c;->b:Lcom/tapjoy/internal/dy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 789
    new-instance v0, Lcom/tapjoy/internal/dy$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tapjoy/internal/dy$b;-><init>(Lcom/tapjoy/internal/dk;B)V

    iput-object v0, p0, Lcom/tapjoy/internal/dy$c;->c:Lcom/tapjoy/internal/dy$b;

    .line 790
    iget-object v0, p0, Lcom/tapjoy/internal/dy$c;->c:Lcom/tapjoy/internal/dy$b;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dy$b;->a()Lcom/tapjoy/internal/dt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/dt;->c()Lcom/tapjoy/internal/dk$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/dy$c;->d:Lcom/tapjoy/internal/dk$a;

    .line 791
    invoke-virtual {p1}, Lcom/tapjoy/internal/dy;->a()I

    move-result v0

    iput v0, p0, Lcom/tapjoy/internal/dy$c;->a:I

    .line 792
    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/internal/dy;B)V
    .locals 0

    .prologue
    .line 782
    invoke-direct {p0, p1}, Lcom/tapjoy/internal/dy$c;-><init>(Lcom/tapjoy/internal/dy;)V

    return-void
.end method


# virtual methods
.method public final a()B
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/tapjoy/internal/dy$c;->d:Lcom/tapjoy/internal/dk$a;

    invoke-interface {v0}, Lcom/tapjoy/internal/dk$a;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/tapjoy/internal/dy$c;->c:Lcom/tapjoy/internal/dy$b;

    invoke-virtual {v0}, Lcom/tapjoy/internal/dy$b;->a()Lcom/tapjoy/internal/dt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/dt;->c()Lcom/tapjoy/internal/dk$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/dy$c;->d:Lcom/tapjoy/internal/dk$a;

    .line 806
    :cond_0
    iget v0, p0, Lcom/tapjoy/internal/dy$c;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tapjoy/internal/dy$c;->a:I

    .line 807
    iget-object v0, p0, Lcom/tapjoy/internal/dy$c;->d:Lcom/tapjoy/internal/dk$a;

    invoke-interface {v0}, Lcom/tapjoy/internal/dk$a;->a()B

    move-result v0

    return v0
.end method

.method public final hasNext()Z
    .locals 1

    .prologue
    .line 795
    iget v0, p0, Lcom/tapjoy/internal/dy$c;->a:I

    if-lez v0, :cond_0

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
    .line 782
    .line 1799
    invoke-virtual {p0}, Lcom/tapjoy/internal/dy$c;->a()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    .line 782
    return-object v0
.end method

.method public final remove()V
    .locals 1

    .prologue
    .line 811
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
