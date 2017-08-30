.class public final Lb/a/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/b/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/d$f;,
        Lb/a/b/d$c;,
        Lb/a/b/d$e;,
        Lb/a/b/d$a;,
        Lb/a/b/d$b;,
        Lb/a/b/d$d;
    }
.end annotation


# instance fields
.field private final a:Lb/a/b/r;

.field private final b:Lc/e;

.field private final c:Lc/d;

.field private d:Lb/a/b/g;

.field private e:I


# direct methods
.method public constructor <init>(Lb/a/b/r;Lc/e;Lc/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lb/a/b/d;->e:I

    iput-object p1, p0, Lb/a/b/d;->a:Lb/a/b/r;

    iput-object p2, p0, Lb/a/b/d;->b:Lc/e;

    iput-object p3, p0, Lb/a/b/d;->c:Lc/d;

    return-void
.end method

.method static synthetic a(Lb/a/b/d;I)I
    .locals 0

    iput p1, p0, Lb/a/b/d;->e:I

    return p1
.end method

.method static synthetic a(Lb/a/b/d;)Lc/d;
    .locals 1

    iget-object v0, p0, Lb/a/b/d;->c:Lc/d;

    return-object v0
.end method

.method static synthetic a(Lb/a/b/d;Lc/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/a/b/d;->a(Lc/i;)V

    return-void
.end method

.method private a(Lc/i;)V
    .locals 2

    invoke-virtual {p1}, Lc/i;->a()Lc/s;

    move-result-object v0

    sget-object v1, Lc/s;->b:Lc/s;

    invoke-virtual {p1, v1}, Lc/i;->a(Lc/s;)Lc/i;

    invoke-virtual {v0}, Lc/s;->f()Lc/s;

    invoke-virtual {v0}, Lc/s;->j_()Lc/s;

    return-void
.end method

.method static synthetic b(Lb/a/b/d;)Lc/e;
    .locals 1

    iget-object v0, p0, Lb/a/b/d;->b:Lc/e;

    return-object v0
.end method

.method private b(Lb/ab;)Lc/r;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lb/a/b/g;->a(Lb/ab;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lb/a/b/d;->b(J)Lc/r;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lb/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb/a/b/d;->d:Lb/a/b/g;

    invoke-virtual {p0, v0}, Lb/a/b/d;->b(Lb/a/b/g;)Lc/r;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lb/a/b/j;->a(Lb/ab;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0, v1}, Lb/a/b/d;->b(J)Lc/r;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lb/a/b/d;->g()Lc/r;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lb/a/b/d;)I
    .locals 1

    iget v0, p0, Lb/a/b/d;->e:I

    return v0
.end method

.method static synthetic d(Lb/a/b/d;)Lb/a/b/r;
    .locals 1

    iget-object v0, p0, Lb/a/b/d;->a:Lb/a/b/r;

    return-object v0
.end method


# virtual methods
.method public a(Lb/ab;)Lb/ac;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lb/a/b/d;->b(Lb/ab;)Lc/r;

    move-result-object v0

    new-instance v1, Lb/a/b/k;

    invoke-virtual {p1}, Lb/ab;->e()Lb/r;

    move-result-object v2

    invoke-static {v0}, Lc/l;->a(Lc/r;)Lc/e;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lb/a/b/k;-><init>(Lb/r;Lc/e;)V

    return-object v1
.end method

.method public a(J)Lc/q;
    .locals 3

    iget v0, p0, Lb/a/b/d;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lb/a/b/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lb/a/b/d;->e:I

    new-instance v0, Lb/a/b/d$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lb/a/b/d$d;-><init>(Lb/a/b/d;JLb/a/b/d$1;)V

    return-object v0
.end method

.method public a(Lb/z;J)Lc/q;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "chunked"

    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lb/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/a/b/d;->f()Lc/q;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2, p3}, Lb/a/b/d;->a(J)Lc/q;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lb/a/b/d;->a:Lb/a/b/r;

    invoke-virtual {v0}, Lb/a/b/r;->a()Lb/a/c/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/a/c/b;->b()V

    :cond_0
    return-void
.end method

.method public a(Lb/a/b/g;)V
    .locals 0

    iput-object p1, p0, Lb/a/b/d;->d:Lb/a/b/g;

    return-void
.end method

.method public a(Lb/a/b/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lb/a/b/d;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lb/a/b/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lb/a/b/d;->e:I

    iget-object v0, p0, Lb/a/b/d;->c:Lc/d;

    invoke-virtual {p1, v0}, Lb/a/b/n;->a(Lc/q;)V

    return-void
.end method

.method public a(Lb/r;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lb/a/b/d;->e:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lb/a/b/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/a/b/d;->c:Lc/d;

    invoke-interface {v0, p2}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lb/r;->a()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lb/a/b/d;->c:Lc/d;

    invoke-virtual {p1, v0}, Lb/r;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v2

    const-string v3, ": "

    invoke-interface {v2, v3}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v2

    invoke-virtual {p1, v0}, Lb/r;->b(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-interface {v2, v3}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lb/a/b/d;->c:Lc/d;

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lc/d;->b(Ljava/lang/String;)Lc/d;

    const/4 v0, 0x1

    iput v0, p0, Lb/a/b/d;->e:I

    return-void
.end method

.method public a(Lb/z;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/b/d;->d:Lb/a/b/g;

    invoke-virtual {v0}, Lb/a/b/g;->b()V

    iget-object v0, p0, Lb/a/b/d;->d:Lb/a/b/g;

    invoke-virtual {v0}, Lb/a/b/g;->d()Lb/i;

    move-result-object v0

    invoke-interface {v0}, Lb/i;->a()Lb/ad;

    move-result-object v0

    invoke-virtual {v0}, Lb/ad;->b()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    invoke-static {p1, v0}, Lb/a/b/m;->a(Lb/z;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lb/z;->c()Lb/r;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lb/a/b/d;->a(Lb/r;Ljava/lang/String;)V

    return-void
.end method

.method public b()Lb/ab$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lb/a/b/d;->d()Lb/ab$a;

    move-result-object v0

    return-object v0
.end method

.method public b(J)Lc/r;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lb/a/b/d;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lb/a/b/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lb/a/b/d;->e:I

    new-instance v0, Lb/a/b/d$e;

    invoke-direct {v0, p0, p1, p2}, Lb/a/b/d$e;-><init>(Lb/a/b/d;J)V

    return-object v0
.end method

.method public b(Lb/a/b/g;)Lc/r;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lb/a/b/d;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lb/a/b/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lb/a/b/d;->e:I

    new-instance v0, Lb/a/b/d$c;

    invoke-direct {v0, p0, p1}, Lb/a/b/d$c;-><init>(Lb/a/b/d;Lb/a/b/g;)V

    return-object v0
.end method

.method public c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/b/d;->c:Lc/d;

    invoke-interface {v0}, Lc/d;->flush()V

    return-void
.end method

.method public d()Lb/ab$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lb/a/b/d;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lb/a/b/d;->e:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lb/a/b/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lb/a/b/d;->b:Lc/e;

    invoke-interface {v0}, Lc/e;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb/a/b/q;->a(Ljava/lang/String;)Lb/a/b/q;

    move-result-object v0

    new-instance v1, Lb/ab$a;

    invoke-direct {v1}, Lb/ab$a;-><init>()V

    iget-object v2, v0, Lb/a/b/q;->a:Lb/x;

    invoke-virtual {v1, v2}, Lb/ab$a;->a(Lb/x;)Lb/ab$a;

    move-result-object v1

    iget v2, v0, Lb/a/b/q;->b:I

    invoke-virtual {v1, v2}, Lb/ab$a;->a(I)Lb/ab$a;

    move-result-object v1

    iget-object v2, v0, Lb/a/b/q;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lb/ab$a;->a(Ljava/lang/String;)Lb/ab$a;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/b/d;->e()Lb/r;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb/ab$a;->a(Lb/r;)Lb/ab$a;

    move-result-object v1

    iget v0, v0, Lb/a/b/q;->b:I

    const/16 v2, 0x64

    if-eq v0, v2, :cond_0

    const/4 v0, 0x4

    iput v0, p0, Lb/a/b/d;->e:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected end of stream on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lb/a/b/d;->a:Lb/a/b/r;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public e()Lb/r;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lb/r$a;

    invoke-direct {v0}, Lb/r$a;-><init>()V

    :goto_0
    iget-object v1, p0, Lb/a/b/d;->b:Lc/e;

    invoke-interface {v1}, Lc/e;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lb/a/c;->b:Lb/a/c;

    invoke-virtual {v2, v0, v1}, Lb/a/c;->a(Lb/r$a;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lb/r$a;->a()Lb/r;

    move-result-object v0

    return-object v0
.end method

.method public f()Lc/q;
    .locals 3

    iget v0, p0, Lb/a/b/d;->e:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lb/a/b/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lb/a/b/d;->e:I

    new-instance v0, Lb/a/b/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/a/b/d$b;-><init>(Lb/a/b/d;Lb/a/b/d$1;)V

    return-object v0
.end method

.method public g()Lc/r;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lb/a/b/d;->e:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lb/a/b/d;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lb/a/b/d;->a:Lb/a/b/r;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lb/a/b/d;->e:I

    iget-object v0, p0, Lb/a/b/d;->a:Lb/a/b/r;

    invoke-virtual {v0}, Lb/a/b/r;->c()V

    new-instance v0, Lb/a/b/d$f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/a/b/d$f;-><init>(Lb/a/b/d;Lb/a/b/d$1;)V

    return-object v0
.end method
