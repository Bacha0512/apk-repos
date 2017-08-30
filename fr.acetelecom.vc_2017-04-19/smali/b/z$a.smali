.class public Lb/z$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lb/s;

.field private b:Ljava/lang/String;

.field private c:Lb/r$a;

.field private d:Lb/aa;

.field private e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    iput-object v0, p0, Lb/z$a;->b:Ljava/lang/String;

    new-instance v0, Lb/r$a;

    invoke-direct {v0}, Lb/r$a;-><init>()V

    iput-object v0, p0, Lb/z$a;->c:Lb/r$a;

    return-void
.end method

.method private constructor <init>(Lb/z;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lb/z;->a(Lb/z;)Lb/s;

    move-result-object v0

    iput-object v0, p0, Lb/z$a;->a:Lb/s;

    invoke-static {p1}, Lb/z;->b(Lb/z;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/z$a;->b:Ljava/lang/String;

    invoke-static {p1}, Lb/z;->c(Lb/z;)Lb/aa;

    move-result-object v0

    iput-object v0, p0, Lb/z$a;->d:Lb/aa;

    invoke-static {p1}, Lb/z;->d(Lb/z;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lb/z$a;->e:Ljava/lang/Object;

    invoke-static {p1}, Lb/z;->e(Lb/z;)Lb/r;

    move-result-object v0

    invoke-virtual {v0}, Lb/r;->b()Lb/r$a;

    move-result-object v0

    iput-object v0, p0, Lb/z$a;->c:Lb/r$a;

    return-void
.end method

.method synthetic constructor <init>(Lb/z;Lb/z$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/z$a;-><init>(Lb/z;)V

    return-void
.end method

.method static synthetic a(Lb/z$a;)Lb/s;
    .locals 1

    iget-object v0, p0, Lb/z$a;->a:Lb/s;

    return-object v0
.end method

.method static synthetic b(Lb/z$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/z$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lb/z$a;)Lb/r$a;
    .locals 1

    iget-object v0, p0, Lb/z$a;->c:Lb/r$a;

    return-object v0
.end method

.method static synthetic d(Lb/z$a;)Lb/aa;
    .locals 1

    iget-object v0, p0, Lb/z$a;->d:Lb/aa;

    return-object v0
.end method

.method static synthetic e(Lb/z$a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lb/z$a;->e:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(Lb/r;)Lb/z$a;
    .locals 1

    invoke-virtual {p1}, Lb/r;->b()Lb/r$a;

    move-result-object v0

    iput-object v0, p0, Lb/z$a;->c:Lb/r$a;

    return-object p0
.end method

.method public a(Lb/s;)Lb/z$a;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lb/z$a;->a:Lb/s;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lb/z$a;
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v3, "ws:"

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-static {p1}, Lb/s;->e(Ljava/lang/String;)Lb/s;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v3, "wss:"

    move-object v0, p1

    move v4, v2

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lb/z$a;->a(Lb/s;)Lb/z$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lb/aa;)Lb/z$a;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method == null || method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p1}, Lb/a/b/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p2, :cond_3

    invoke-static {p1}, Lb/a/b/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must have a request body."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Lb/z$a;->b:Ljava/lang/String;

    iput-object p2, p0, Lb/z$a;->d:Lb/aa;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lb/z$a;
    .locals 1

    iget-object v0, p0, Lb/z$a;->c:Lb/r$a;

    invoke-virtual {v0, p1, p2}, Lb/r$a;->c(Ljava/lang/String;Ljava/lang/String;)Lb/r$a;

    return-object p0
.end method

.method public a()Lb/z;
    .locals 2

    iget-object v0, p0, Lb/z$a;->a:Lb/s;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lb/z;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/z;-><init>(Lb/z$a;Lb/z$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lb/z$a;
    .locals 1

    iget-object v0, p0, Lb/z$a;->c:Lb/r$a;

    invoke-virtual {v0, p1}, Lb/r$a;->b(Ljava/lang/String;)Lb/r$a;

    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lb/z$a;
    .locals 1

    iget-object v0, p0, Lb/z$a;->c:Lb/r$a;

    invoke-virtual {v0, p1, p2}, Lb/r$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/r$a;

    return-object p0
.end method
