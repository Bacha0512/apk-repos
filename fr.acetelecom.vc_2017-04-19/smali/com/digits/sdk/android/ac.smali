.class public Lcom/digits/sdk/android/ac;
.super La/a/a/a/i;


# annotations
.annotation runtime La/a/a/a/a/c/d;
    a = {
        Lcom/twitter/sdk/android/core/o;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/digits/sdk/android/ac$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/a/a/i",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/digits/sdk/android/au;

.field private final c:Lcom/digits/sdk/android/ar;

.field private final j:Lcom/digits/sdk/android/cc;

.field private volatile k:Lcom/digits/sdk/android/aj;

.field private volatile l:Lcom/digits/sdk/android/h;

.field private volatile m:Lcom/digits/sdk/android/q;

.field private volatile n:Lcom/twitter/sdk/android/core/e;

.field private o:Lcom/twitter/sdk/android/core/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/digits/sdk/android/aw;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/twitter/sdk/android/core/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/twitter/sdk/android/core/d;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/twitter/sdk/android/core/internal/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/internal/b",
            "<",
            "Lcom/digits/sdk/android/aw;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/digits/sdk/android/a;

.field private s:Lcom/twitter/sdk/android/core/internal/scribe/a;

.field private t:Lcom/digits/sdk/android/ax;

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "INVITES"

    sput-object v0, Lcom/digits/sdk/android/ac;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(ILcom/digits/sdk/android/as;)V
    .locals 4

    invoke-direct {p0}, La/a/a/a/i;-><init>()V

    new-instance v0, Lcom/digits/sdk/android/au;

    invoke-direct {v0}, Lcom/digits/sdk/android/au;-><init>()V

    iput-object v0, p0, Lcom/digits/sdk/android/ac;->b:Lcom/digits/sdk/android/au;

    new-instance v0, Lcom/digits/sdk/android/cc;

    invoke-direct {v0}, Lcom/digits/sdk/android/cc;-><init>()V

    iput-object v0, p0, Lcom/digits/sdk/android/ac;->j:Lcom/digits/sdk/android/cc;

    iput p1, p0, Lcom/digits/sdk/android/ac;->u:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Lcom/digits/sdk/android/ab;->a:Lcom/digits/sdk/android/ab;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/digits/sdk/android/z;->a:Lcom/digits/sdk/android/z;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Lcom/digits/sdk/android/ar;

    iget-object v2, p0, Lcom/digits/sdk/android/ac;->b:Lcom/digits/sdk/android/au;

    sget-object v3, Lcom/digits/sdk/android/be;->a:Lcom/digits/sdk/android/be;

    invoke-direct {v1, v2, v3, v0}, Lcom/digits/sdk/android/ar;-><init>(Lcom/digits/sdk/android/au;Lcom/digits/sdk/android/be;Ljava/util/Set;)V

    iput-object v1, p0, Lcom/digits/sdk/android/ac;->c:Lcom/digits/sdk/android/ar;

    return-void
.end method

.method private declared-synchronized A()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/digits/sdk/android/ac;->n:Lcom/twitter/sdk/android/core/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;

    invoke-static {}, Lcom/twitter/sdk/android/core/o;->a()Lcom/twitter/sdk/android/core/o;

    move-result-object v1

    invoke-static {}, Lcom/twitter/sdk/android/core/o;->a()Lcom/twitter/sdk/android/core/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/o;->c()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    new-instance v3, Lcom/digits/sdk/android/ah;

    invoke-direct {v3}, Lcom/digits/sdk/android/ah;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;-><init>(Lcom/twitter/sdk/android/core/o;Ljavax/net/ssl/SSLSocketFactory;Lcom/twitter/sdk/android/core/internal/d;)V

    new-instance v1, Lcom/twitter/sdk/android/core/e;

    iget-object v2, p0, Lcom/digits/sdk/android/ac;->p:Lcom/twitter/sdk/android/core/k;

    invoke-direct {v1, v0, v2}, Lcom/twitter/sdk/android/core/e;-><init>(Lcom/twitter/sdk/android/core/internal/oauth/OAuth2Service;Lcom/twitter/sdk/android/core/k;)V

    iput-object v1, p0, Lcom/digits/sdk/android/ac;->n:Lcom/twitter/sdk/android/core/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized B()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/digits/sdk/android/ac;->k:Lcom/digits/sdk/android/aj;

    if-nez v0, :cond_0

    new-instance v0, Lcom/digits/sdk/android/aj;

    invoke-static {}, Lcom/digits/sdk/android/ac;->f()Lcom/twitter/sdk/android/core/k;

    move-result-object v1

    invoke-virtual {p0}, Lcom/digits/sdk/android/ac;->e()Lcom/digits/sdk/android/cc;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/digits/sdk/android/aj;-><init>(Lcom/twitter/sdk/android/core/k;Lcom/digits/sdk/android/cc;)V

    iput-object v0, p0, Lcom/digits/sdk/android/ac;->k:Lcom/digits/sdk/android/aj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized C()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/digits/sdk/android/ac;->l:Lcom/digits/sdk/android/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/digits/sdk/android/h;

    invoke-virtual {p0}, Lcom/digits/sdk/android/ac;->k()Lcom/digits/sdk/android/aj;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/digits/sdk/android/h;-><init>(Lcom/digits/sdk/android/aj;)V

    iput-object v0, p0, Lcom/digits/sdk/android/ac;->l:Lcom/digits/sdk/android/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized D()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/digits/sdk/android/ac;->m:Lcom/digits/sdk/android/q;

    if-nez v0, :cond_0

    new-instance v0, Lcom/digits/sdk/android/q;

    invoke-virtual {p0}, Lcom/digits/sdk/android/ac;->k()Lcom/digits/sdk/android/aj;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/digits/sdk/android/q;-><init>(Lcom/digits/sdk/android/aj;)V

    iput-object v0, p0, Lcom/digits/sdk/android/ac;->m:Lcom/digits/sdk/android/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static a()Lcom/digits/sdk/android/ac;
    .locals 1

    const-class v0, Lcom/digits/sdk/android/ac;

    invoke-static {v0}, La/a/a/a/c;->a(Ljava/lang/Class;)La/a/a/a/i;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/ac;

    return-object v0
.end method

.method public static a(Lcom/digits/sdk/android/i;)V
    .locals 1

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/ac;->m()Lcom/digits/sdk/android/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/digits/sdk/android/h;->a(Lcom/digits/sdk/android/i;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/twitter/sdk/android/core/k;La/a/a/a/a/b/m;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/digits/sdk/android/ac;->s:Lcom/twitter/sdk/android/core/internal/scribe/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/twitter/sdk/android/core/internal/scribe/a;

    invoke-static {}, Lcom/digits/sdk/android/ay;->a()Lcom/digits/sdk/android/ay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/digits/sdk/android/ay;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/digits/sdk/android/ac;->f()Lcom/twitter/sdk/android/core/k;

    move-result-object v3

    invoke-virtual {p0}, Lcom/digits/sdk/android/ac;->l()Lcom/twitter/sdk/android/core/e;

    move-result-object v4

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/twitter/sdk/android/core/internal/scribe/a;-><init>(La/a/a/a/i;Ljava/lang/String;Lcom/twitter/sdk/android/core/k;Lcom/twitter/sdk/android/core/e;La/a/a/a/a/b/m;)V

    iput-object v0, p0, Lcom/digits/sdk/android/ac;->s:Lcom/twitter/sdk/android/core/internal/scribe/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static b()Lcom/digits/sdk/android/aw;
    .locals 1

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    iget-object v0, v0, Lcom/digits/sdk/android/ac;->o:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/k;->c()Lcom/twitter/sdk/android/core/j;

    move-result-object v0

    check-cast v0, Lcom/digits/sdk/android/aw;

    return-object v0
.end method

.method public static c()Z
    .locals 1

    invoke-static {}, Lcom/digits/sdk/android/ac;->b()Lcom/digits/sdk/android/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/digits/sdk/android/ac;->b()Lcom/digits/sdk/android/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/digits/sdk/android/aw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static f()Lcom/twitter/sdk/android/core/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/sdk/android/core/k",
            "<",
            "Lcom/digits/sdk/android/aw;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/digits/sdk/android/ac;->a()Lcom/digits/sdk/android/ac;

    move-result-object v0

    iget-object v0, v0, Lcom/digits/sdk/android/ac;->o:Lcom/twitter/sdk/android/core/k;

    return-object v0
.end method


# virtual methods
.method protected a(I)V
    .locals 0

    iput p1, p0, Lcom/digits/sdk/android/ac;->u:I

    invoke-virtual {p0}, Lcom/digits/sdk/android/ac;->r()V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0.6.dev"

    return-object v0
.end method

.method protected e()Lcom/digits/sdk/android/cc;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/ac;->j:Lcom/digits/sdk/android/cc;

    return-object v0
.end method

.method protected g()Z
    .locals 5

    new-instance v0, Lcom/twitter/sdk/android/core/internal/a;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/a;-><init>()V

    invoke-virtual {p0}, Lcom/digits/sdk/android/ac;->w()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/digits/sdk/android/ac;->j()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/digits/sdk/android/ac;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "session_store"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/sdk/android/core/internal/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/twitter/sdk/android/core/g;

    new-instance v1, La/a/a/a/a/f/c;

    invoke-virtual {p0}, Lcom/digits/sdk/android/ac;->w()Landroid/content/Context;

    move-result-object v2

    const-string v3, "session_store"

    invoke-direct {v1, v2, v3}, La/a/a/a/a/f/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Lcom/digits/sdk/android/aw$a;

    invoke-direct {v2}, Lcom/digits/sdk/android/aw$a;-><init>()V

    const-string v3, "active_session"

    const-string v4, "session"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/sdk/android/core/g;-><init>(La/a/a/a/a/f/b;La/a/a/a/a/f/e;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/digits/sdk/android/bq;

    iget-object v2, p0, Lcom/digits/sdk/android/ac;->c:Lcom/digits/sdk/android/ar;

    invoke-direct {v1, v0, v2}, Lcom/digits/sdk/android/bq;-><init>(Lcom/twitter/sdk/android/core/k;Lcom/digits/sdk/android/ar;)V

    iput-object v1, p0, Lcom/digits/sdk/android/ac;->o:Lcom/twitter/sdk/android/core/k;

    new-instance v0, Lcom/digits/sdk/android/ax;

    invoke-direct {v0}, Lcom/digits/sdk/android/ax;-><init>()V

    iput-object v0, p0, Lcom/digits/sdk/android/ac;->t:Lcom/digits/sdk/android/ax;

    new-instance v0, Lcom/twitter/sdk/android/core/g;

    new-instance v1, La/a/a/a/a/f/c;

    invoke-virtual {p0}, Lcom/digits/sdk/android/ac;->w()Landroid/content/Context;

    move-result-object v2

    const-string v3, "session_store"

    invoke-direct {v1, v2, v3}, La/a/a/a/a/f/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Lcom/twitter/sdk/android/core/d$a;

    invoke-direct {v2}, Lcom/twitter/sdk/android/core/d$a;-><init>()V

    const-string v3, "active_guestsession"

    const-string v4, "guestsession"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/twitter/sdk/android/core/g;-><init>(La/a/a/a/a/f/b;La/a/a/a/a/f/e;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/digits/sdk/android/ac;->p:Lcom/twitter/sdk/android/core/k;

    invoke-super {p0}, La/a/a/a/i;->g()Z

    move-result v0

    return v0
.end method

.method protected h()Ljava/lang/Void;
    .locals 4

    new-instance v0, Lcom/digits/sdk/android/ac$1;

    invoke-direct {v0, p0}, Lcom/digits/sdk/android/ac$1;-><init>(Lcom/digits/sdk/android/ac;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/ac$1;->c([Ljava/lang/Object;)La/a/a/a/a/c/a;

    iget-object v0, p0, Lcom/digits/sdk/android/ac;->o:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/k;->c()Lcom/twitter/sdk/android/core/j;

    iget-object v0, p0, Lcom/digits/sdk/android/ac;->p:Lcom/twitter/sdk/android/core/k;

    invoke-interface {v0}, Lcom/twitter/sdk/android/core/k;->c()Lcom/twitter/sdk/android/core/j;

    iget-object v0, p0, Lcom/digits/sdk/android/ac;->o:Lcom/twitter/sdk/android/core/k;

    invoke-virtual {p0}, Lcom/digits/sdk/android/ac;->v()La/a/a/a/a/b/m;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/digits/sdk/android/ac;->a(Lcom/twitter/sdk/android/core/k;La/a/a/a/a/b/m;)V

    iget-object v0, p0, Lcom/digits/sdk/android/ac;->b:Lcom/digits/sdk/android/au;

    iget-object v1, p0, Lcom/digits/sdk/android/ac;->s:Lcom/twitter/sdk/android/core/internal/scribe/a;

    invoke-virtual {v0, v1}, Lcom/digits/sdk/android/au;->a(Lcom/twitter/sdk/android/core/internal/scribe/a;)V

    invoke-direct {p0}, Lcom/digits/sdk/android/ac;->B()V

    invoke-direct {p0}, Lcom/digits/sdk/android/ac;->C()V

    invoke-direct {p0}, Lcom/digits/sdk/android/ac;->D()V

    new-instance v0, Lcom/twitter/sdk/android/core/internal/b;

    invoke-static {}, Lcom/digits/sdk/android/ac;->f()Lcom/twitter/sdk/android/core/k;

    move-result-object v1

    invoke-virtual {p0}, Lcom/digits/sdk/android/ac;->p()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iget-object v3, p0, Lcom/digits/sdk/android/ac;->t:Lcom/digits/sdk/android/ax;

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/sdk/android/core/internal/b;-><init>(Lcom/twitter/sdk/android/core/k;Ljava/util/concurrent/ExecutorService;Lcom/twitter/sdk/android/core/internal/c;)V

    iput-object v0, p0, Lcom/digits/sdk/android/ac;->q:Lcom/twitter/sdk/android/core/internal/b;

    iget-object v0, p0, Lcom/digits/sdk/android/ac;->q:Lcom/twitter/sdk/android/core/internal/b;

    invoke-virtual {p0}, Lcom/digits/sdk/android/ac;->x()La/a/a/a/c;

    move-result-object v1

    invoke-virtual {v1}, La/a/a/a/c;->e()La/a/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/core/internal/b;->a(La/a/a/a/a;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method i()I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    iget v0, p0, Lcom/digits/sdk/android/ac;->u:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/digits/sdk/android/ac;->u:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/digits/sdk/android/cb$h;->Digits_default:I

    goto :goto_0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "com.digits.sdk.android:digits"

    return-object v0
.end method

.method k()Lcom/digits/sdk/android/aj;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/ac;->k:Lcom/digits/sdk/android/aj;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/digits/sdk/android/ac;->B()V

    :cond_0
    iget-object v0, p0, Lcom/digits/sdk/android/ac;->k:Lcom/digits/sdk/android/aj;

    return-object v0
.end method

.method l()Lcom/twitter/sdk/android/core/e;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/ac;->n:Lcom/twitter/sdk/android/core/e;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/digits/sdk/android/ac;->A()V

    :cond_0
    iget-object v0, p0, Lcom/digits/sdk/android/ac;->n:Lcom/twitter/sdk/android/core/e;

    return-object v0
.end method

.method m()Lcom/digits/sdk/android/h;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/ac;->l:Lcom/digits/sdk/android/h;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/digits/sdk/android/ac;->C()V

    :cond_0
    iget-object v0, p0, Lcom/digits/sdk/android/ac;->l:Lcom/digits/sdk/android/h;

    return-object v0
.end method

.method n()Lcom/digits/sdk/android/q;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/ac;->m:Lcom/digits/sdk/android/q;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/digits/sdk/android/ac;->D()V

    :cond_0
    iget-object v0, p0, Lcom/digits/sdk/android/ac;->m:Lcom/digits/sdk/android/q;

    return-object v0
.end method

.method protected o()Lcom/digits/sdk/android/ar;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/ac;->c:Lcom/digits/sdk/android/ar;

    return-object v0
.end method

.method protected p()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-virtual {p0}, Lcom/digits/sdk/android/ac;->x()La/a/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, La/a/a/a/c;->f()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method protected q()Lcom/digits/sdk/android/a;
    .locals 1

    iget-object v0, p0, Lcom/digits/sdk/android/ac;->r:Lcom/digits/sdk/android/a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/digits/sdk/android/ac;->r()V

    :cond_0
    iget-object v0, p0, Lcom/digits/sdk/android/ac;->r:Lcom/digits/sdk/android/a;

    return-object v0
.end method

.method protected r()V
    .locals 3

    new-instance v0, Lcom/digits/sdk/android/b;

    invoke-direct {v0}, Lcom/digits/sdk/android/b;-><init>()V

    invoke-virtual {p0}, Lcom/digits/sdk/android/ac;->w()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/digits/sdk/android/ac;->u:I

    invoke-virtual {v0, v1, v2}, Lcom/digits/sdk/android/b;->a(Landroid/content/Context;I)Lcom/digits/sdk/android/a;

    move-result-object v0

    iput-object v0, p0, Lcom/digits/sdk/android/ac;->r:Lcom/digits/sdk/android/a;

    return-void
.end method

.method s()Lcom/twitter/sdk/android/core/TwitterAuthConfig;
    .locals 1

    invoke-static {}, Lcom/twitter/sdk/android/core/o;->a()Lcom/twitter/sdk/android/core/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/o;->b()Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic t()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/digits/sdk/android/ac;->h()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
