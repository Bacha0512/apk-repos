.class final Lcom/tapjoy/internal/gp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/gp;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/gp;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/gp;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/tapjoy/internal/gp$1;->a:Lcom/tapjoy/internal/gp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/tapjoy/internal/gp$1;->a:Lcom/tapjoy/internal/gp;

    invoke-static {v0}, Lcom/tapjoy/internal/gp;->a(Lcom/tapjoy/internal/gp;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/gp$1;->a:Lcom/tapjoy/internal/gp;

    invoke-static {v0}, Lcom/tapjoy/internal/gp;->b(Lcom/tapjoy/internal/gp;)V

    goto :goto_0
.end method
