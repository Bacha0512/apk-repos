.class Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule$EarlyLocker;
.super Lorg/pjsip/pjsua/EarlyLockCallback;
.source "EarlyLockModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EarlyLocker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule;


# direct methods
.method private constructor <init>(Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule$EarlyLocker;->this$0:Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule;

    invoke-direct {p0}, Lorg/pjsip/pjsua/EarlyLockCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule;Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule$EarlyLocker;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule$EarlyLocker;-><init>(Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule;)V

    return-void
.end method


# virtual methods
.method public on_create_early_lock()V
    .locals 4

    .prologue
    .line 109
    new-instance v0, Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule$WorkLocker;

    iget-object v1, p0, Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule$EarlyLocker;->this$0:Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule;

    const-wide/16 v2, 0x7d0

    invoke-direct {v0, v1, v2, v3}, Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule$WorkLocker;-><init>(Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule;J)V

    .line 110
    .local v0, "wl":Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule$WorkLocker;
    invoke-virtual {v0}, Lcom/weirdvoice/pjsip/earlylock/EarlyLockModule$WorkLocker;->start()V

    .line 111
    return-void
.end method
