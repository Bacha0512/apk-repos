.class public final Lcom/tapjoy/internal/gk;
.super Ljava/lang/Object;


# static fields
.field public static final c:Lcom/tapjoy/internal/bm;

.field private static final d:Lcom/tapjoy/internal/ar;


# instance fields
.field public a:Ljava/net/URL;

.field public b:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/tapjoy/internal/av;

    invoke-direct {v0}, Lcom/tapjoy/internal/av;-><init>()V

    instance-of v1, v0, Lcom/tapjoy/internal/aw;

    if-eqz v1, :cond_0

    :goto_0
    sput-object v0, Lcom/tapjoy/internal/gk;->d:Lcom/tapjoy/internal/ar;

    new-instance v0, Lcom/tapjoy/internal/gk$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gk$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gk;->c:Lcom/tapjoy/internal/bm;

    return-void

    :cond_0
    new-instance v1, Lcom/tapjoy/internal/at$a;

    check-cast v0, Lcom/tapjoy/internal/au;

    invoke-direct {v1, v0}, Lcom/tapjoy/internal/at$a;-><init>(Lcom/tapjoy/internal/au;)V

    move-object v0, v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/tapjoy/internal/br;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->k()Lcom/tapjoy/internal/bw;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/internal/bw;->f:Lcom/tapjoy/internal/bw;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->e()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gk;->a:Ljava/net/URL;

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->h()V

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->l()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "url"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->e()Ljava/net/URL;

    move-result-object v1

    iput-object v1, p0, Lcom/tapjoy/internal/gk;->a:Ljava/net/URL;

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->s()V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->i()V

    goto :goto_1
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/gk;->a:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    sget-object v0, Lcom/tapjoy/internal/gk;->d:Lcom/tapjoy/internal/ar;

    iget-object v1, p0, Lcom/tapjoy/internal/gk;->a:Ljava/net/URL;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/ar;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/tapjoy/internal/gk;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/tapjoy/internal/gk;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    sget-object v0, Lcom/tapjoy/internal/u;->a:Lcom/tapjoy/internal/u;

    iget-object v0, p0, Lcom/tapjoy/internal/gk;->a:Ljava/net/URL;

    invoke-static {v0}, Lcom/tapjoy/internal/eh;->a(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/internal/u;->a(Ljava/net/URLConnection;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gk;->b:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/tapjoy/internal/gk;->d:Lcom/tapjoy/internal/ar;

    iget-object v1, p0, Lcom/tapjoy/internal/gk;->a:Ljava/net/URL;

    iget-object v2, p0, Lcom/tapjoy/internal/gk;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Lcom/tapjoy/internal/ar;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
