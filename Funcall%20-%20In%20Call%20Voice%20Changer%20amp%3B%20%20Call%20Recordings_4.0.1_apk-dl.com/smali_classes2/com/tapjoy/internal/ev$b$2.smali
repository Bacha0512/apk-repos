.class final Lcom/tapjoy/internal/ev$b$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/ev$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/ev$b;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/ev$b;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/tapjoy/internal/ev$b$2;->a:Lcom/tapjoy/internal/ev$b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/tapjoy/internal/ev$b$2;->a:Lcom/tapjoy/internal/ev$b;

    iget-object v0, v0, Lcom/tapjoy/internal/ev$b;->a:Lcom/tapjoy/internal/ev;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ev;->b()V

    .line 346
    return-void
.end method
