.class public Lb/w;
.super Ljava/lang/Object;

# interfaces
.implements Lb/e$a;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/w$a;
    }
.end annotation


# static fields
.field private static final A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/k;",
            ">;"
        }
    .end annotation
.end field

.field private static final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/x;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Lb/n;

.field final b:Ljava/net/Proxy;

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lb/x;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
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

.field final g:Ljava/net/ProxySelector;

.field final h:Lb/m;

.field final i:Lb/c;

.field final j:Lb/a/d;

.field final k:Ljavax/net/SocketFactory;

.field final l:Ljavax/net/ssl/SSLSocketFactory;

.field final m:Lb/a/d/f;

.field final n:Ljavax/net/ssl/HostnameVerifier;

.field final o:Lb/g;

.field final p:Lb/b;

.field final q:Lb/b;

.field final r:Lb/j;

.field final s:Lb/o;

.field final t:Z

.field final u:Z

.field final v:Z

.field final w:I

.field final x:I

.field final y:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v5, [Lb/x;

    sget-object v1, Lb/x;->d:Lb/x;

    aput-object v1, v0, v2

    sget-object v1, Lb/x;->c:Lb/x;

    aput-object v1, v0, v3

    sget-object v1, Lb/x;->b:Lb/x;

    aput-object v1, v0, v4

    invoke-static {v0}, Lb/a/i;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lb/w;->z:Ljava/util/List;

    new-array v0, v5, [Lb/k;

    sget-object v1, Lb/k;->a:Lb/k;

    aput-object v1, v0, v2

    sget-object v1, Lb/k;->b:Lb/k;

    aput-object v1, v0, v3

    sget-object v1, Lb/k;->c:Lb/k;

    aput-object v1, v0, v4

    invoke-static {v0}, Lb/a/i;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lb/w;->A:Ljava/util/List;

    new-instance v0, Lb/w$1;

    invoke-direct {v0}, Lb/w$1;-><init>()V

    sput-object v0, Lb/a/c;->b:Lb/a/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lb/w$a;

    invoke-direct {v0}, Lb/w$a;-><init>()V

    invoke-direct {p0, v0}, Lb/w;-><init>(Lb/w$a;)V

    return-void
.end method

.method private constructor <init>(Lb/w$a;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lb/w$a;->a:Lb/n;

    iput-object v0, p0, Lb/w;->a:Lb/n;

    iget-object v0, p1, Lb/w$a;->b:Ljava/net/Proxy;

    iput-object v0, p0, Lb/w;->b:Ljava/net/Proxy;

    iget-object v0, p1, Lb/w$a;->c:Ljava/util/List;

    iput-object v0, p0, Lb/w;->c:Ljava/util/List;

    iget-object v0, p1, Lb/w$a;->d:Ljava/util/List;

    iput-object v0, p0, Lb/w;->d:Ljava/util/List;

    iget-object v0, p1, Lb/w$a;->e:Ljava/util/List;

    invoke-static {v0}, Lb/a/i;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/w;->e:Ljava/util/List;

    iget-object v0, p1, Lb/w$a;->f:Ljava/util/List;

    invoke-static {v0}, Lb/a/i;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/w;->f:Ljava/util/List;

    iget-object v0, p1, Lb/w$a;->g:Ljava/net/ProxySelector;

    iput-object v0, p0, Lb/w;->g:Ljava/net/ProxySelector;

    iget-object v0, p1, Lb/w$a;->h:Lb/m;

    iput-object v0, p0, Lb/w;->h:Lb/m;

    iget-object v0, p1, Lb/w$a;->i:Lb/c;

    iput-object v0, p0, Lb/w;->i:Lb/c;

    iget-object v0, p1, Lb/w$a;->j:Lb/a/d;

    iput-object v0, p0, Lb/w;->j:Lb/a/d;

    iget-object v0, p1, Lb/w$a;->k:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lb/w;->k:Ljavax/net/SocketFactory;

    iget-object v0, p0, Lb/w;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/k;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lb/k;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lb/w$a;->l:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_3

    if-nez v1, :cond_4

    :cond_3
    iget-object v0, p1, Lb/w$a;->l:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lb/w;->l:Ljavax/net/ssl/SSLSocketFactory;

    :goto_2
    iget-object v0, p0, Lb/w;->l:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lb/w$a;->m:Lb/a/d/f;

    if-nez v0, :cond_6

    invoke-static {}, Lb/a/g;->a()Lb/a/g;

    move-result-object v0

    iget-object v1, p0, Lb/w;->l:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Lb/a/g;->a(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to extract the trust manager on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lb/a/g;->a()Lb/a/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sslSocketFactory is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lb/w;->l:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :try_start_0
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lb/w;->l:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    invoke-static {}, Lb/a/g;->a()Lb/a/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lb/a/g;->a(Ljavax/net/ssl/X509TrustManager;)Lb/a/d/f;

    move-result-object v0

    iput-object v0, p0, Lb/w;->m:Lb/a/d/f;

    iget-object v0, p1, Lb/w$a;->o:Lb/g;

    invoke-virtual {v0}, Lb/g;->a()Lb/g$a;

    move-result-object v0

    iget-object v1, p0, Lb/w;->m:Lb/a/d/f;

    invoke-virtual {v0, v1}, Lb/g$a;->a(Lb/a/d/f;)Lb/g$a;

    move-result-object v0

    invoke-virtual {v0}, Lb/g$a;->a()Lb/g;

    move-result-object v0

    iput-object v0, p0, Lb/w;->o:Lb/g;

    :goto_3
    iget-object v0, p1, Lb/w$a;->n:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lb/w;->n:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p1, Lb/w$a;->p:Lb/b;

    iput-object v0, p0, Lb/w;->p:Lb/b;

    iget-object v0, p1, Lb/w$a;->q:Lb/b;

    iput-object v0, p0, Lb/w;->q:Lb/b;

    iget-object v0, p1, Lb/w$a;->r:Lb/j;

    iput-object v0, p0, Lb/w;->r:Lb/j;

    iget-object v0, p1, Lb/w$a;->s:Lb/o;

    iput-object v0, p0, Lb/w;->s:Lb/o;

    iget-boolean v0, p1, Lb/w$a;->t:Z

    iput-boolean v0, p0, Lb/w;->t:Z

    iget-boolean v0, p1, Lb/w$a;->u:Z

    iput-boolean v0, p0, Lb/w;->u:Z

    iget-boolean v0, p1, Lb/w$a;->v:Z

    iput-boolean v0, p0, Lb/w;->v:Z

    iget v0, p1, Lb/w$a;->w:I

    iput v0, p0, Lb/w;->w:I

    iget v0, p1, Lb/w$a;->x:I

    iput v0, p0, Lb/w;->x:I

    iget v0, p1, Lb/w$a;->y:I

    iput v0, p0, Lb/w;->y:I

    return-void

    :cond_6
    iget-object v0, p1, Lb/w$a;->m:Lb/a/d/f;

    iput-object v0, p0, Lb/w;->m:Lb/a/d/f;

    iget-object v0, p1, Lb/w$a;->o:Lb/g;

    iput-object v0, p0, Lb/w;->o:Lb/g;

    goto :goto_3
.end method

.method synthetic constructor <init>(Lb/w$a;Lb/w$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lb/w;-><init>(Lb/w$a;)V

    return-void
.end method

.method static synthetic x()Ljava/util/List;
    .locals 1

    sget-object v0, Lb/w;->z:Ljava/util/List;

    return-object v0
.end method

.method static synthetic y()Ljava/util/List;
    .locals 1

    sget-object v0, Lb/w;->A:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lb/w;->w:I

    return v0
.end method

.method public a(Lb/z;)Lb/e;
    .locals 1

    new-instance v0, Lb/y;

    invoke-direct {v0, p0, p1}, Lb/y;-><init>(Lb/w;Lb/z;)V

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lb/w;->x:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lb/w;->y:I

    return v0
.end method

.method public d()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Lb/w;->b:Ljava/net/Proxy;

    return-object v0
.end method

.method public e()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, Lb/w;->g:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public f()Lb/m;
    .locals 1

    iget-object v0, p0, Lb/w;->h:Lb/m;

    return-object v0
.end method

.method g()Lb/a/d;
    .locals 1

    iget-object v0, p0, Lb/w;->i:Lb/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb/w;->i:Lb/c;

    iget-object v0, v0, Lb/c;->a:Lb/a/d;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lb/w;->j:Lb/a/d;

    goto :goto_0
.end method

.method public h()Lb/o;
    .locals 1

    iget-object v0, p0, Lb/w;->s:Lb/o;

    return-object v0
.end method

.method public i()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, Lb/w;->k:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public j()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lb/w;->l:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public k()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lb/w;->n:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public l()Lb/g;
    .locals 1

    iget-object v0, p0, Lb/w;->o:Lb/g;

    return-object v0
.end method

.method public m()Lb/b;
    .locals 1

    iget-object v0, p0, Lb/w;->q:Lb/b;

    return-object v0
.end method

.method public n()Lb/b;
    .locals 1

    iget-object v0, p0, Lb/w;->p:Lb/b;

    return-object v0
.end method

.method public o()Lb/j;
    .locals 1

    iget-object v0, p0, Lb/w;->r:Lb/j;

    return-object v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lb/w;->t:Z

    return v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lb/w;->u:Z

    return v0
.end method

.method public r()Z
    .locals 1

    iget-boolean v0, p0, Lb/w;->v:Z

    return v0
.end method

.method public s()Lb/n;
    .locals 1

    iget-object v0, p0, Lb/w;->a:Lb/n;

    return-object v0
.end method

.method public t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lb/x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/w;->c:Ljava/util/List;

    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lb/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/w;->d:Ljava/util/List;

    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lb/t;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/w;->e:Ljava/util/List;

    return-object v0
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lb/t;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/w;->f:Ljava/util/List;

    return-object v0
.end method
