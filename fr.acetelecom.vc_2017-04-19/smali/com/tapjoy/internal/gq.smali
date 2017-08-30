.class public final Lcom/tapjoy/internal/gq;
.super Lcom/tapjoy/internal/gp;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gq$a;
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public d:Z

.field private final e:Lcom/tapjoy/internal/fm;

.field private final f:Lcom/tapjoy/internal/gd$l;

.field private final g:Lcom/tapjoy/internal/gd$a;

.field private final h:Lcom/tapjoy/internal/gd$z;

.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/fm;Lcom/tapjoy/internal/gd$l;Lcom/tapjoy/internal/gd$a;Lcom/tapjoy/internal/gd$z;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/gp;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/gq;->e:Lcom/tapjoy/internal/fm;

    iput-object p2, p0, Lcom/tapjoy/internal/gq;->f:Lcom/tapjoy/internal/gd$l;

    iput-object p3, p0, Lcom/tapjoy/internal/gq;->g:Lcom/tapjoy/internal/gd$a;

    iput-object p4, p0, Lcom/tapjoy/internal/gq;->h:Lcom/tapjoy/internal/gd$z;

    iput-object p5, p0, Lcom/tapjoy/internal/gq;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/gq;->d:Z

    iput-object p6, p0, Lcom/tapjoy/internal/gq;->i:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/tapjoy/internal/br;)Ljava/lang/Object;
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->h()V

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->l()Ljava/lang/String;

    move-result-object v0

    const-string v4, "interstitial"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v0, Lcom/tapjoy/internal/gh;->n:Lcom/tapjoy/internal/bm;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/br;->a(Lcom/tapjoy/internal/bm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gh;

    move-object v3, v0

    goto :goto_0

    :cond_0
    const-string v4, "contextual_button"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v0, Lcom/tapjoy/internal/gf;->d:Lcom/tapjoy/internal/bm;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/br;->a(Lcom/tapjoy/internal/bm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gf;

    move-object v2, v0

    goto :goto_0

    :cond_1
    const-string v4, "enabled_placements"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->c()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->s()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->i()V

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gh;->a()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3}, Lcom/tapjoy/internal/gh;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    new-instance v0, Lcom/tapjoy/internal/gq$a;

    new-instance v2, Lcom/tapjoy/internal/fr;

    iget-object v4, p0, Lcom/tapjoy/internal/gq;->e:Lcom/tapjoy/internal/fm;

    iget-object v5, p0, Lcom/tapjoy/internal/gq;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/tapjoy/internal/gq;->i:Landroid/content/Context;

    invoke-direct {v2, v4, v5, v3, v6}, Lcom/tapjoy/internal/fr;-><init>(Lcom/tapjoy/internal/fm;Ljava/lang/String;Lcom/tapjoy/internal/gh;Landroid/content/Context;)V

    invoke-direct {v0, v2, v1}, Lcom/tapjoy/internal/gq$a;-><init>(Lcom/tapjoy/internal/ft;Ljava/util/List;)V

    :goto_1
    return-object v0

    :cond_5
    if-eqz v2, :cond_6

    new-instance v0, Lcom/tapjoy/internal/gq$a;

    new-instance v3, Lcom/tapjoy/internal/fi;

    iget-object v4, p0, Lcom/tapjoy/internal/gq;->e:Lcom/tapjoy/internal/fm;

    iget-object v5, p0, Lcom/tapjoy/internal/gq;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/tapjoy/internal/gq;->i:Landroid/content/Context;

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/tapjoy/internal/fi;-><init>(Lcom/tapjoy/internal/fm;Ljava/lang/String;Lcom/tapjoy/internal/gf;Landroid/content/Context;)V

    invoke-direct {v0, v3, v1}, Lcom/tapjoy/internal/gq$a;-><init>(Lcom/tapjoy/internal/ft;Ljava/util/List;)V

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/tapjoy/internal/gq$a;

    new-instance v2, Lcom/tapjoy/internal/fs;

    invoke-direct {v2}, Lcom/tapjoy/internal/fs;-><init>()V

    invoke-direct {v0, v2, v1}, Lcom/tapjoy/internal/gq$a;-><init>(Lcom/tapjoy/internal/ft;Ljava/util/List;)V

    goto :goto_1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    const-string v0, "placement"

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 4

    invoke-super {p0}, Lcom/tapjoy/internal/gp;->e()Ljava/util/Map;

    move-result-object v0

    const-string v1, "info"

    new-instance v2, Lcom/tapjoy/internal/bq;

    iget-object v3, p0, Lcom/tapjoy/internal/gq;->f:Lcom/tapjoy/internal/gd$l;

    invoke-static {v3}, Lcom/tapjoy/internal/gc;->a(Lcom/tapjoy/internal/gd$l;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app"

    new-instance v2, Lcom/tapjoy/internal/bq;

    iget-object v3, p0, Lcom/tapjoy/internal/gq;->g:Lcom/tapjoy/internal/gd$a;

    invoke-static {v3}, Lcom/tapjoy/internal/gc;->a(Lcom/tapjoy/internal/gd$a;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "user"

    new-instance v2, Lcom/tapjoy/internal/bq;

    iget-object v3, p0, Lcom/tapjoy/internal/gq;->h:Lcom/tapjoy/internal/gd$z;

    invoke-static {v3}, Lcom/tapjoy/internal/gc;->a(Lcom/tapjoy/internal/gd$z;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "placement"

    iget-object v2, p0, Lcom/tapjoy/internal/gq;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected final synthetic f()Ljava/lang/Object;
    .locals 4

    invoke-super {p0}, Lcom/tapjoy/internal/gp;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gq$a;

    iget-object v1, v0, Lcom/tapjoy/internal/gq$a;->a:Lcom/tapjoy/internal/ft;

    instance-of v1, v1, Lcom/tapjoy/internal/fs;

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/tapjoy/internal/gq$a;->a:Lcom/tapjoy/internal/ft;

    invoke-virtual {v1}, Lcom/tapjoy/internal/ft;->a()V

    iget-object v1, v0, Lcom/tapjoy/internal/gq$a;->a:Lcom/tapjoy/internal/ft;

    invoke-virtual {v1}, Lcom/tapjoy/internal/ft;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tapjoy/internal/gq;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    new-instance v1, Lcom/tapjoy/internal/fs;

    invoke-direct {v1}, Lcom/tapjoy/internal/fs;-><init>()V

    iput-object v1, v0, Lcom/tapjoy/internal/gq$a;->a:Lcom/tapjoy/internal/ft;

    :cond_0
    return-object v0
.end method
