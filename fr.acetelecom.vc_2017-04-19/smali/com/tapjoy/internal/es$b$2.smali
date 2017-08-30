.class final Lcom/tapjoy/internal/es$b$2;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/es$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/es$b;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/es$b;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/internal/es$b$2;->a:Lcom/tapjoy/internal/es$b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/internal/es$b$2;->a:Lcom/tapjoy/internal/es$b;

    iget-object v0, v0, Lcom/tapjoy/internal/es$b;->a:Lcom/tapjoy/internal/es;

    invoke-virtual {v0}, Lcom/tapjoy/internal/es;->b()V

    return-void
.end method
