.class final Lcom/tapjoy/internal/fq$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/hf$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/fq;->a(Landroid/app/Activity;Lcom/tapjoy/internal/fv;Lcom/tapjoy/internal/eq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/tapjoy/internal/fv;

.field final synthetic c:Lcom/tapjoy/internal/fq;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fq;Landroid/app/Activity;Lcom/tapjoy/internal/fv;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/tapjoy/internal/fq$2;->c:Lcom/tapjoy/internal/fq;

    iput-object p2, p0, Lcom/tapjoy/internal/fq$2;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/tapjoy/internal/fq$2;->b:Lcom/tapjoy/internal/fv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/tapjoy/internal/fq$2;->c:Lcom/tapjoy/internal/fq;

    invoke-static {v0}, Lcom/tapjoy/internal/fq;->a(Lcom/tapjoy/internal/fq;)V

    .line 148
    return-void
.end method

.method public final a(Lcom/tapjoy/internal/gv;)V
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/tapjoy/internal/fq$2;->c:Lcom/tapjoy/internal/fq;

    .line 1030
    iget-object v0, v0, Lcom/tapjoy/internal/fq;->b:Lcom/tapjoy/internal/fu;

    .line 128
    iget-object v1, p0, Lcom/tapjoy/internal/fq$2;->c:Lcom/tapjoy/internal/fq;

    iget-object v1, v1, Lcom/tapjoy/internal/fq;->d:Lcom/tapjoy/internal/gn;

    iget-object v1, v1, Lcom/tapjoy/internal/gn;->b:Ljava/util/Map;

    iget-object v2, p1, Lcom/tapjoy/internal/gv;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fu;->a(Ljava/util/Map;Ljava/lang/String;)V

    .line 130
    iget-object v0, p1, Lcom/tapjoy/internal/gv;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/tapjoy/internal/fq$2;->c:Lcom/tapjoy/internal/fq;

    iget-object v0, v0, Lcom/tapjoy/internal/fq;->j:Lcom/tapjoy/internal/fn;

    iget-object v1, p0, Lcom/tapjoy/internal/fq$2;->a:Landroid/app/Activity;

    iget-object v2, p1, Lcom/tapjoy/internal/gv;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/tapjoy/internal/gv;->i:Ljava/lang/String;

    invoke-static {v3}, Lcom/tapjoy/internal/cr;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/tapjoy/internal/fn;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/tapjoy/internal/fq$2;->c:Lcom/tapjoy/internal/fq;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tapjoy/internal/fq;->i:Z

    .line 138
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tapjoy/internal/fq$2;->b:Lcom/tapjoy/internal/fv;

    iget-object v1, p0, Lcom/tapjoy/internal/fq$2;->c:Lcom/tapjoy/internal/fq;

    iget-object v1, v1, Lcom/tapjoy/internal/fq;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/internal/fv;->a(Ljava/lang/String;Lcom/tapjoy/internal/fg;)V

    .line 140
    iget-boolean v0, p1, Lcom/tapjoy/internal/gv;->j:Z

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/tapjoy/internal/fq$2;->c:Lcom/tapjoy/internal/fq;

    invoke-static {v0}, Lcom/tapjoy/internal/fq;->a(Lcom/tapjoy/internal/fq;)V

    .line 143
    :cond_1
    return-void

    .line 134
    :cond_2
    iget-object v0, p1, Lcom/tapjoy/internal/gv;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/tapjoy/internal/cr;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/tapjoy/internal/fq$2;->a:Landroid/app/Activity;

    iget-object v1, p1, Lcom/tapjoy/internal/gv;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tapjoy/internal/gb;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
