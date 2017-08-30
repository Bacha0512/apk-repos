.class public Lb/a/a/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/net/Socket;

.field private b:Ljava/lang/String;

.field private c:Lc/e;

.field private d:Lc/d;

.field private e:Lb/a/a/d$b;

.field private f:Lb/x;

.field private g:Lb/a/a/m;

.field private h:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lb/a/a/d$b;->a:Lb/a/a/d$b;

    iput-object v0, p0, Lb/a/a/d$a;->e:Lb/a/a/d$b;

    sget-object v0, Lb/x;->c:Lb/x;

    iput-object v0, p0, Lb/a/a/d$a;->f:Lb/x;

    sget-object v0, Lb/a/a/m;->a:Lb/a/a/m;

    iput-object v0, p0, Lb/a/a/d$a;->g:Lb/a/a/m;

    iput-boolean p1, p0, Lb/a/a/d$a;->h:Z

    return-void
.end method

.method static synthetic a(Lb/a/a/d$a;)Lb/x;
    .locals 1

    iget-object v0, p0, Lb/a/a/d$a;->f:Lb/x;

    return-object v0
.end method

.method static synthetic b(Lb/a/a/d$a;)Lb/a/a/m;
    .locals 1

    iget-object v0, p0, Lb/a/a/d$a;->g:Lb/a/a/m;

    return-object v0
.end method

.method static synthetic c(Lb/a/a/d$a;)Z
    .locals 1

    iget-boolean v0, p0, Lb/a/a/d$a;->h:Z

    return v0
.end method

.method static synthetic d(Lb/a/a/d$a;)Lb/a/a/d$b;
    .locals 1

    iget-object v0, p0, Lb/a/a/d$a;->e:Lb/a/a/d$b;

    return-object v0
.end method

.method static synthetic e(Lb/a/a/d$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb/a/a/d$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lb/a/a/d$a;)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lb/a/a/d$a;->a:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic g(Lb/a/a/d$a;)Lc/d;
    .locals 1

    iget-object v0, p0, Lb/a/a/d$a;->d:Lc/d;

    return-object v0
.end method

.method static synthetic h(Lb/a/a/d$a;)Lc/e;
    .locals 1

    iget-object v0, p0, Lb/a/a/d$a;->c:Lc/e;

    return-object v0
.end method


# virtual methods
.method public a(Lb/a/a/d$b;)Lb/a/a/d$a;
    .locals 0

    iput-object p1, p0, Lb/a/a/d$a;->e:Lb/a/a/d$b;

    return-object p0
.end method

.method public a(Lb/x;)Lb/a/a/d$a;
    .locals 0

    iput-object p1, p0, Lb/a/a/d$a;->f:Lb/x;

    return-object p0
.end method

.method public a(Ljava/net/Socket;Ljava/lang/String;Lc/e;Lc/d;)Lb/a/a/d$a;
    .locals 0

    iput-object p1, p0, Lb/a/a/d$a;->a:Ljava/net/Socket;

    iput-object p2, p0, Lb/a/a/d$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lb/a/a/d$a;->c:Lc/e;

    iput-object p4, p0, Lb/a/a/d$a;->d:Lc/d;

    return-object p0
.end method

.method public a()Lb/a/a/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lb/a/a/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/a/a/d;-><init>(Lb/a/a/d$a;Lb/a/a/d$1;)V

    return-object v0
.end method
