.class final Lcom/tapjoy/internal/fi$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tapjoy/internal/gw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/fi;->a(Landroid/app/Activity;Lcom/tapjoy/internal/fn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/tapjoy/internal/fn;

.field final synthetic c:Lcom/tapjoy/internal/fi;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fi;Landroid/app/Activity;Lcom/tapjoy/internal/fn;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/fi$2;->c:Lcom/tapjoy/internal/fi;

    iput-object p2, p0, Lcom/tapjoy/internal/fi$2;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/tapjoy/internal/fi$2;->b:Lcom/tapjoy/internal/fn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/fi$2;->c:Lcom/tapjoy/internal/fi;

    invoke-static {v0}, Lcom/tapjoy/internal/fi;->a(Lcom/tapjoy/internal/fi;)V

    return-void
.end method

.method public final a(Lcom/tapjoy/internal/gm;)V
    .locals 4

    iget-object v0, p0, Lcom/tapjoy/internal/fi$2;->c:Lcom/tapjoy/internal/fi;

    iget-object v0, v0, Lcom/tapjoy/internal/fi;->b:Lcom/tapjoy/internal/fm;

    iget-object v1, p0, Lcom/tapjoy/internal/fi$2;->c:Lcom/tapjoy/internal/fi;

    iget-object v1, v1, Lcom/tapjoy/internal/fi;->d:Lcom/tapjoy/internal/gf;

    iget-object v1, v1, Lcom/tapjoy/internal/gf;->b:Ljava/util/Map;

    iget-object v2, p1, Lcom/tapjoy/internal/gm;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fm;->a(Ljava/util/Map;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/tapjoy/internal/gm;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/fi$2;->c:Lcom/tapjoy/internal/fi;

    iget-object v0, v0, Lcom/tapjoy/internal/fi;->j:Lcom/tapjoy/internal/ff;

    iget-object v1, p0, Lcom/tapjoy/internal/fi$2;->a:Landroid/app/Activity;

    iget-object v2, p1, Lcom/tapjoy/internal/gm;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/gm;->i:Ljava/lang/String;

    invoke-static {v3}, Lcom/tapjoy/internal/cr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tapjoy/internal/ff;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/internal/fi$2;->c:Lcom/tapjoy/internal/fi;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tapjoy/internal/fi;->i:Z

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/fi$2;->b:Lcom/tapjoy/internal/fn;

    iget-object v1, p0, Lcom/tapjoy/internal/fi$2;->c:Lcom/tapjoy/internal/fi;

    iget-object v1, v1, Lcom/tapjoy/internal/fi;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fn;->a(Ljava/lang/String;Lcom/tapjoy/internal/ey;)V

    iget-boolean v0, p1, Lcom/tapjoy/internal/gm;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/fi$2;->c:Lcom/tapjoy/internal/fi;

    invoke-static {v0}, Lcom/tapjoy/internal/fi;->a(Lcom/tapjoy/internal/fi;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p1, Lcom/tapjoy/internal/gm;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fi$2;->a:Landroid/app/Activity;

    iget-object v1, p1, Lcom/tapjoy/internal/gm;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/ft;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
