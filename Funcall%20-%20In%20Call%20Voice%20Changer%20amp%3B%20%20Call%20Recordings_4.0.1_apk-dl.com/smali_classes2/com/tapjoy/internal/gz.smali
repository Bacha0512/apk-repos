.class public final Lcom/tapjoy/internal/gz;
.super Lcom/tapjoy/internal/gy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gz$a;
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public d:Z

.field private final e:Lcom/tapjoy/internal/fu;

.field private final f:Lcom/tapjoy/internal/gl$l;

.field private final g:Lcom/tapjoy/internal/gl$a;

.field private final h:Lcom/tapjoy/internal/gl$z;

.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/fu;Lcom/tapjoy/internal/gl$l;Lcom/tapjoy/internal/gl$a;Lcom/tapjoy/internal/gl$z;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/tapjoy/internal/gy;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/tapjoy/internal/gz;->e:Lcom/tapjoy/internal/fu;

    .line 44
    iput-object p2, p0, Lcom/tapjoy/internal/gz;->f:Lcom/tapjoy/internal/gl$l;

    .line 45
    iput-object p3, p0, Lcom/tapjoy/internal/gz;->g:Lcom/tapjoy/internal/gl$a;

    .line 46
    iput-object p4, p0, Lcom/tapjoy/internal/gz;->h:Lcom/tapjoy/internal/gl$z;

    .line 47
    iput-object p5, p0, Lcom/tapjoy/internal/gz;->c:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/gz;->d:Z

    .line 49
    iput-object p6, p0, Lcom/tapjoy/internal/gz;->i:Landroid/content/Context;

    .line 50
    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/tapjoy/internal/br;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 25
    .line 1085
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->h()V

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    .line 1086
    :goto_0
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1087
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->l()Ljava/lang/String;

    move-result-object v0

    .line 1088
    const-string v4, "interstitial"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1089
    sget-object v0, Lcom/tapjoy/internal/gq;->n:Lcom/tapjoy/internal/bm;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/br;->a(Lcom/tapjoy/internal/bm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gq;

    move-object v3, v0

    goto :goto_0

    .line 1090
    :cond_0
    const-string v4, "contextual_button"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1091
    sget-object v0, Lcom/tapjoy/internal/gn;->d:Lcom/tapjoy/internal/bm;

    invoke-virtual {p1, v0}, Lcom/tapjoy/internal/br;->a(Lcom/tapjoy/internal/bm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gn;

    move-object v2, v0

    goto :goto_0

    .line 1092
    :cond_1
    const-string v4, "enabled_placements"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1093
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->c()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 1095
    :cond_2
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->s()V

    goto :goto_0

    .line 1098
    :cond_3
    invoke-virtual {p1}, Lcom/tapjoy/internal/br;->i()V

    .line 1099
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/tapjoy/internal/gq;->a()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3}, Lcom/tapjoy/internal/gq;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1100
    :cond_4
    new-instance v0, Lcom/tapjoy/internal/gz$a;

    new-instance v2, Lcom/tapjoy/internal/fz;

    iget-object v4, p0, Lcom/tapjoy/internal/gz;->e:Lcom/tapjoy/internal/fu;

    iget-object v5, p0, Lcom/tapjoy/internal/gz;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/tapjoy/internal/gz;->i:Landroid/content/Context;

    invoke-direct {v2, v4, v5, v3, v6}, Lcom/tapjoy/internal/fz;-><init>(Lcom/tapjoy/internal/fu;Ljava/lang/String;Lcom/tapjoy/internal/gq;Landroid/content/Context;)V

    invoke-direct {v0, v2, v1}, Lcom/tapjoy/internal/gz$a;-><init>(Lcom/tapjoy/internal/gb;Ljava/util/List;)V

    .line 1103
    :goto_1
    return-object v0

    .line 1102
    :cond_5
    if-eqz v2, :cond_6

    .line 1103
    new-instance v0, Lcom/tapjoy/internal/gz$a;

    new-instance v3, Lcom/tapjoy/internal/fq;

    iget-object v4, p0, Lcom/tapjoy/internal/gz;->e:Lcom/tapjoy/internal/fu;

    iget-object v5, p0, Lcom/tapjoy/internal/gz;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/tapjoy/internal/gz;->i:Landroid/content/Context;

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/tapjoy/internal/fq;-><init>(Lcom/tapjoy/internal/fu;Ljava/lang/String;Lcom/tapjoy/internal/gn;Landroid/content/Context;)V

    invoke-direct {v0, v3, v1}, Lcom/tapjoy/internal/gz$a;-><init>(Lcom/tapjoy/internal/gb;Ljava/util/List;)V

    goto :goto_1

    .line 1105
    :cond_6
    new-instance v0, Lcom/tapjoy/internal/gz$a;

    new-instance v2, Lcom/tapjoy/internal/ga;

    invoke-direct {v2}, Lcom/tapjoy/internal/ga;-><init>()V

    invoke-direct {v0, v2, v1}, Lcom/tapjoy/internal/gz$a;-><init>(Lcom/tapjoy/internal/gb;Ljava/util/List;)V

    goto :goto_1
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "placement"

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 4

    .prologue
    .line 59
    invoke-super {p0}, Lcom/tapjoy/internal/gy;->e()Ljava/util/Map;

    move-result-object v0

    .line 60
    const-string v1, "info"

    new-instance v2, Lcom/tapjoy/internal/bq;

    iget-object v3, p0, Lcom/tapjoy/internal/gz;->f:Lcom/tapjoy/internal/gl$l;

    invoke-static {v3}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gl$l;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "app"

    new-instance v2, Lcom/tapjoy/internal/bq;

    iget-object v3, p0, Lcom/tapjoy/internal/gz;->g:Lcom/tapjoy/internal/gl$a;

    invoke-static {v3}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gl$a;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "user"

    new-instance v2, Lcom/tapjoy/internal/bq;

    iget-object v3, p0, Lcom/tapjoy/internal/gz;->h:Lcom/tapjoy/internal/gl$z;

    invoke-static {v3}, Lcom/tapjoy/internal/gk;->a(Lcom/tapjoy/internal/gl$z;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tapjoy/internal/bq;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v1, "placement"

    iget-object v2, p0, Lcom/tapjoy/internal/gz;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-object v0
.end method

.method protected final synthetic f()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 25
    .line 2069
    invoke-super {p0}, Lcom/tapjoy/internal/gy;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gz$a;

    .line 2070
    iget-object v1, v0, Lcom/tapjoy/internal/gz$a;->a:Lcom/tapjoy/internal/gb;

    instance-of v1, v1, Lcom/tapjoy/internal/ga;

    if-nez v1, :cond_0

    .line 2071
    iget-object v1, v0, Lcom/tapjoy/internal/gz$a;->a:Lcom/tapjoy/internal/gb;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gb;->a()V

    .line 2072
    iget-object v1, v0, Lcom/tapjoy/internal/gz$a;->a:Lcom/tapjoy/internal/gb;

    invoke-virtual {v1}, Lcom/tapjoy/internal/gb;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2073
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tapjoy/internal/gz;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 2074
    new-instance v1, Lcom/tapjoy/internal/ga;

    invoke-direct {v1}, Lcom/tapjoy/internal/ga;-><init>()V

    iput-object v1, v0, Lcom/tapjoy/internal/gz$a;->a:Lcom/tapjoy/internal/gb;

    .line 25
    :cond_0
    return-object v0
.end method
