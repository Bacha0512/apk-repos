.class public final Lb/w$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Lb/n;

.field b:Ljava/net/Proxy;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/x;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/k;",
            ">;"
        }
    .end annotation
.end field

.field final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/t;",
            ">;"
        }
    .end annotation
.end field

.field final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/t;",
            ">;"
        }
    .end annotation
.end field

.field g:Ljava/net/ProxySelector;

.field h:Lb/m;

.field i:Lb/c;

.field j:Lb/a/d;

.field k:Ljavax/net/SocketFactory;

.field l:Ljavax/net/ssl/SSLSocketFactory;

.field m:Lb/a/d/f;

.field n:Ljavax/net/ssl/HostnameVerifier;

.field o:Lb/g;

.field p:Lb/b;

.field q:Lb/b;

.field r:Lb/j;

.field s:Lb/o;

.field t:Z

.field u:Z

.field v:Z

.field w:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x2710

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/w$a;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/w$a;->f:Ljava/util/List;

    new-instance v0, Lb/n;

    invoke-direct {v0}, Lb/n;-><init>()V

    iput-object v0, p0, Lb/w$a;->a:Lb/n;

    invoke-static {}, Lb/w;->x()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/w$a;->c:Ljava/util/List;

    invoke-static {}, Lb/w;->y()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/w$a;->d:Ljava/util/List;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lb/w$a;->g:Ljava/net/ProxySelector;

    sget-object v0, Lb/m;->a:Lb/m;

    iput-object v0, p0, Lb/w$a;->h:Lb/m;

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lb/w$a;->k:Ljavax/net/SocketFactory;

    sget-object v0, Lb/a/d/d;->a:Lb/a/d/d;

    iput-object v0, p0, Lb/w$a;->n:Ljavax/net/ssl/HostnameVerifier;

    sget-object v0, Lb/g;->a:Lb/g;

    iput-object v0, p0, Lb/w$a;->o:Lb/g;

    sget-object v0, Lb/b;->b:Lb/b;

    iput-object v0, p0, Lb/w$a;->p:Lb/b;

    sget-object v0, Lb/b;->b:Lb/b;

    iput-object v0, p0, Lb/w$a;->q:Lb/b;

    new-instance v0, Lb/j;

    invoke-direct {v0}, Lb/j;-><init>()V

    iput-object v0, p0, Lb/w$a;->r:Lb/j;

    sget-object v0, Lb/o;->a:Lb/o;

    iput-object v0, p0, Lb/w$a;->s:Lb/o;

    iput-boolean v1, p0, Lb/w$a;->t:Z

    iput-boolean v1, p0, Lb/w$a;->u:Z

    iput-boolean v1, p0, Lb/w$a;->v:Z

    iput v2, p0, Lb/w$a;->w:I

    iput v2, p0, Lb/w$a;->x:I

    iput v2, p0, Lb/w$a;->y:I

    return-void
.end method


# virtual methods
.method public a(Lb/b;)Lb/w$a;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "authenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lb/w$a;->q:Lb/b;

    return-object p0
.end method

.method public a(Lb/t;)Lb/w$a;
    .locals 1

    iget-object v0, p0, Lb/w$a;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljavax/net/ssl/SSLSocketFactory;)Lb/w$a;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sslSocketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lb/w$a;->l:Ljavax/net/ssl/SSLSocketFactory;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/w$a;->m:Lb/a/d/f;

    return-object p0
.end method

.method public a()Lb/w;
    .locals 2

    new-instance v0, Lb/w;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lb/w;-><init>(Lb/w$a;Lb/w$1;)V

    return-object v0
.end method

.method public b(Lb/t;)Lb/w$a;
    .locals 1

    iget-object v0, p0, Lb/w$a;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
