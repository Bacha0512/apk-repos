.class Lcom/weirdvoice/service/PresenceManager$AccountStatusContentObserver;
.super Landroid/database/ContentObserver;
.source "PresenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/service/PresenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountStatusContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/service/PresenceManager;


# direct methods
.method public constructor <init>(Lcom/weirdvoice/service/PresenceManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/weirdvoice/service/PresenceManager$AccountStatusContentObserver;->this$0:Lcom/weirdvoice/service/PresenceManager;

    .line 219
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 220
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 223
    iget-object v0, p0, Lcom/weirdvoice/service/PresenceManager$AccountStatusContentObserver;->this$0:Lcom/weirdvoice/service/PresenceManager;

    # invokes: Lcom/weirdvoice/service/PresenceManager;->updateRegistrations()V
    invoke-static {v0}, Lcom/weirdvoice/service/PresenceManager;->access$0(Lcom/weirdvoice/service/PresenceManager;)V

    .line 224
    return-void
.end method