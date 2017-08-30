.class public Lb/ab$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lb/z;

.field private b:Lb/x;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lb/q;

.field private f:Lb/r$a;

.field private g:Lb/ac;

.field private h:Lb/ab;

.field private i:Lb/ab;

.field private j:Lb/ab;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lb/ab$a;->c:I

    new-instance v0, Lb/r$a;

    invoke-direct {v0}, Lb/r$a;-><init>()V

    iput-object v0, p0, Lb/ab$a;->f:Lb/r$a;

    return-void
.end method

.method private constructor <init>(Lb/ab;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lb/ab$a;->c:I

    invoke-static {p1}, Lb/ab;->a(Lb/ab;)Lb/z;

    move-result-object v0

    iput-object v0, p0, Lb/ab$a;->a:Lb/z;

    invoke-static {p1}, Lb/ab;->b(Lb/ab;)Lb/x;

    move-result-object v0

    iput-object v0, p0, Lb/ab$a;->b:Lb/x;

    invoke-static {p1}, Lb/ab;->c(Lb/ab;)I

    move-result v0

    iput v0, p0, Lb/ab$a;->c:I

    invoke-static {p1}, Lb/ab;->d(Lb/ab;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/ab$a;->d:Ljava/lang/String;

    invoke-static {p1}, Lb/ab;->e(Lb/ab;)Lb/q;

    move-result-object v0

    iput-object v0, p0, Lb/ab$a;->e:Lb/q;

    invoke-static {p1}, Lb/ab;->f(Lb/ab;)Lb/r;

    move-result-object v0

    invoke-virtual {v0}, Lb/r;->b()Lb/r$a;

    move-result-object v0

    iput-object v0, p0, Lb/ab$a;->f:Lb/r$a;

    invoke-static {p1}, Lb/ab;->g(Lb/ab;)Lb/ac;

    move-result-object v0

    iput-object v0, p0, Lb/ab$a;->g:Lb/ac;

    invoke-static {p1}, Lb/ab;->h(Lb/ab;)Lb/ab;

    move-result-object v0

    iput-object v0, p0, Lb/ab$a;->h:Lb/ab;

    invoke-static {p1}, Lb/ab;->i(Lb/ab;)Lb/ab;

    move-result-object v0

    iput-object v0, p0, Lb/ab$a;->i:Lb/ab;

    invoke-static {p1}, Lb/ab;->j(Lb/ab;)Lb/ab;

    move-result-object v0

    iput-object v0, p0, Lb/ab$a;->j:Lb/ab;

    return-void
.end method

.method synthetic constructor <init>(Lb/ab;Lb/ab$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/ab$a;-><init>(Lb/ab;)V

    return-void
.end method

.method static synthetic a(Lb/ab$a;)Lb/z;
    .locals 1

    iget-object v0, p0, Lb/ab$a;->a:Lb/z;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lb/ab;)V
    .locals 3

    invoke-static {p2}, Lb/ab;->g(Lb/ab;)Lb/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".body != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Lb/ab;->h(Lb/ab;)Lb/ab;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".networkResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p2}, Lb/ab;->i(Lb/ab;)Lb/ab;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".cacheResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p2}, Lb/ab;->j(Lb/ab;)Lb/ab;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".priorResponse != null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method static synthetic b(Lb/ab$a;)Lb/x;
    .locals 1

    iget-object v0, p0, Lb/ab$a;->b:Lb/x;

    return-object v0
.end method

.method static synthetic c(Lb/ab$a;)I
    .locals 1

    iget v0, p0, Lb/ab$a;->c:I

    return v0
.end method

.method static synthetic d(Lb/ab$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/ab$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method private d(Lb/ab;)V
    .locals 2

    invoke-static {p1}, Lb/ab;->g(Lb/ab;)Lb/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "priorResponse.body != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static synthetic e(Lb/ab$a;)Lb/q;
    .locals 1

    iget-object v0, p0, Lb/ab$a;->e:Lb/q;

    return-object v0
.end method

.method static synthetic f(Lb/ab$a;)Lb/r$a;
    .locals 1

    iget-object v0, p0, Lb/ab$a;->f:Lb/r$a;

    return-object v0
.end method

.method static synthetic g(Lb/ab$a;)Lb/ac;
    .locals 1

    iget-object v0, p0, Lb/ab$a;->g:Lb/ac;

    return-object v0
.end method

.method static synthetic h(Lb/ab$a;)Lb/ab;
    .locals 1

    iget-object v0, p0, Lb/ab$a;->h:Lb/ab;

    return-object v0
.end method

.method static synthetic i(Lb/ab$a;)Lb/ab;
    .locals 1

    iget-object v0, p0, Lb/ab$a;->i:Lb/ab;

    return-object v0
.end method

.method static synthetic j(Lb/ab$a;)Lb/ab;
    .locals 1

    iget-object v0, p0, Lb/ab$a;->j:Lb/ab;

    return-object v0
.end method


# virtual methods
.method public a(I)Lb/ab$a;
    .locals 0

    iput p1, p0, Lb/ab$a;->c:I

    return-object p0
.end method

.method public a(Lb/ab;)Lb/ab$a;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "networkResponse"

    invoke-direct {p0, v0, p1}, Lb/ab$a;->a(Ljava/lang/String;Lb/ab;)V

    :cond_0
    iput-object p1, p0, Lb/ab$a;->h:Lb/ab;

    return-object p0
.end method

.method public a(Lb/ac;)Lb/ab$a;
    .locals 0

    iput-object p1, p0, Lb/ab$a;->g:Lb/ac;

    return-object p0
.end method

.method public a(Lb/q;)Lb/ab$a;
    .locals 0

    iput-object p1, p0, Lb/ab$a;->e:Lb/q;

    return-object p0
.end method

.method public a(Lb/r;)Lb/ab$a;
    .locals 1

    invoke-virtual {p1}, Lb/r;->b()Lb/r$a;

    move-result-object v0

    iput-object v0, p0, Lb/ab$a;->f:Lb/r$a;

    return-object p0
.end method

.method public a(Lb/x;)Lb/ab$a;
    .locals 0

    iput-object p1, p0, Lb/ab$a;->b:Lb/x;

    return-object p0
.end method

.method public a(Lb/z;)Lb/ab$a;
    .locals 0

    iput-object p1, p0, Lb/ab$a;->a:Lb/z;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lb/ab$a;
    .locals 0

    iput-object p1, p0, Lb/ab$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lb/ab$a;
    .locals 1

    iget-object v0, p0, Lb/ab$a;->f:Lb/r$a;

    invoke-virtual {v0, p1, p2}, Lb/r$a;->c(Ljava/lang/String;Ljava/lang/String;)Lb/r$a;

    return-object p0
.end method

.method public a()Lb/ab;
    .locals 3

    iget-object v0, p0, Lb/ab$a;->a:Lb/z;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/ab$a;->b:Lb/x;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lb/ab$a;->c:I

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lb/ab$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lb/ab;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/ab;-><init>(Lb/ab$a;Lb/ab$1;)V

    return-object v0
.end method

.method public b(Lb/ab;)Lb/ab$a;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "cacheResponse"

    invoke-direct {p0, v0, p1}, Lb/ab$a;->a(Ljava/lang/String;Lb/ab;)V

    :cond_0
    iput-object p1, p0, Lb/ab$a;->i:Lb/ab;

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lb/ab$a;
    .locals 1

    iget-object v0, p0, Lb/ab$a;->f:Lb/r$a;

    invoke-virtual {v0, p1, p2}, Lb/r$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/r$a;

    return-object p0
.end method

.method public c(Lb/ab;)Lb/ab$a;
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lb/ab$a;->d(Lb/ab;)V

    :cond_0
    iput-object p1, p0, Lb/ab$a;->j:Lb/ab;

    return-object p0
.end method
