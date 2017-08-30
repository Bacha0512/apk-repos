.class Lorg/abtollc/service/PresenceManager$AccountStatusContentObserver;
.super Landroid/database/ContentObserver;
.source "PresenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/abtollc/service/PresenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountStatusContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/abtollc/service/PresenceManager;


# direct methods
.method public constructor <init>(Lorg/abtollc/service/PresenceManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lorg/abtollc/service/PresenceManager;
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 194
    iput-object p1, p0, Lorg/abtollc/service/PresenceManager$AccountStatusContentObserver;->this$0:Lorg/abtollc/service/PresenceManager;

    .line 195
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 196
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 199
    iget-object v0, p0, Lorg/abtollc/service/PresenceManager$AccountStatusContentObserver;->this$0:Lorg/abtollc/service/PresenceManager;

    # invokes: Lorg/abtollc/service/PresenceManager;->updateRegistrations()V
    invoke-static {v0}, Lorg/abtollc/service/PresenceManager;->access$100(Lorg/abtollc/service/PresenceManager;)V

    .line 200
    return-void
.end method
